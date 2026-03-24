import bibtexparser
import re
import os

# --- Configuration ---
# Place your .bib file in the root directory or update this path
BIB_FILE = 'publications.bib' 
OUTPUT_FILE = '_pages/publications.md'

# Your name variations to highlight
AUTHOR_ALIASES = [r'Lingkang Jin', r'Jin, Lingkang']

def format_authors(author_str):
    """Cleans up the author string and bolds your name."""
    # Replace newlines and bibtex 'and' separators
    authors = author_str.replace('\n', ' ').replace(' and ', ', ')
    
    # Bold the specific author names
    for alias in AUTHOR_ALIASES:
        authors = re.sub(f'({alias})', r'**\1**', authors, flags=re.IGNORECASE)
        
    return authors

def main():
    if not os.path.exists(BIB_FILE):
        print(f"Error: Could not find {BIB_FILE}. Please make sure it exists in the same directory.")
        return

    with open(BIB_FILE, 'r', encoding='utf-8') as bibtex_file:
        bib_database = bibtexparser.load(bibtex_file)

    entries = bib_database.entries
    
    # Sort entries by year descending
    entries.sort(key=lambda x: x.get('year', '0000'), reverse=True)

    journals = []
    conferences = []
    
    j_count = sum(1 for e in entries if e.get('ENTRYTYPE') == 'article')
    c_count = sum(1 for e in entries if e.get('ENTRYTYPE') in ['inproceedings', 'conference'])

    for entry in entries:
        authors = format_authors(entry.get('author', ''))
        title = entry.get('title', '').replace('{', '').replace('}', '')
        year = entry.get('year', '')
        url = entry.get('url', '')
        doi = entry.get('doi', '')
        
        link = ""
        if url:
            link = f" [[URL]]({url})"
        elif doi:
            link = f" [[DOI]](https://doi.org/{doi})"

        # Group by type
        if entry.get('ENTRYTYPE') == 'article':
            journal = entry.get('journal', '').replace('{', '').replace('}', '')
            vol = entry.get('volume', '')
            num = entry.get('number', '')
            pages = entry.get('pages', '')
            
            venue_str = f"*{journal}*"
            if vol: venue_str += f", vol. {vol}"
            if num: venue_str += f", no. {num}"
            if pages: venue_str += f", pp. {pages}"
            
            journals.append(f"**[J{j_count}]** {authors}. \"{title},\" {venue_str}, {year}.{link}")
            j_count -= 1
            
        elif entry.get('ENTRYTYPE') in ['inproceedings', 'conference']:
            booktitle = entry.get('booktitle', '').replace('{', '').replace('}', '')
            venue_str = f"*{booktitle}*"
            conferences.append(f"**[C{c_count}]** {authors}. \"{title},\" {venue_str}, {year}.{link}")
            c_count -= 1

    # Build Markdown Content
    md_content = "---\nlayout: archive\ntitle: \"Publications\"\npermalink: /publications/\nauthor_profile: true\n---\n\n"
    md_content += "{% if site.author.googlescholar %}\n"
    md_content += "  <div class=\"wordwrap\">You can find my full record of articles on <a href=\"{{site.author.googlescholar}}\">my Google Scholar profile</a>.</div>\n"
    md_content += "{% endif %}\n\n"
    
    if journals:
        md_content += "## Journal Articles\n\n"
        md_content += "\n\n".join(journals) + "\n\n"
        
    if conferences:
        md_content += "## Conference Proceedings\n\n"
        md_content += "\n\n".join(conferences) + "\n\n"

    # Write to Markdown file
    with open(OUTPUT_FILE, 'w', encoding='utf-8') as f:
        f.write(md_content)

    print(f"Successfully generated {OUTPUT_FILE} with {len(journals)} journals and {len(conferences)} conferences.")

if __name__ == '__main__':
    main()