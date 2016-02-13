find . -type f  | grep -v ".git" | grep -v "md5checksums" | xargs md5sum > md5checksums
