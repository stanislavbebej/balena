FROM kalilinux/kali-rolling:latest

# https://www.kali.org/docs/general-use/metapackages
RUN apt --quiet update \
    && apt -y install kali-linux-headless \
        # kali-linux-arm \

        # kali-tools-exploitation \
        kali-tools-information-gathering \
        # kali-tools-passwords \
        # kali-tools-social-engineering
        # kali-tools-vulnerability \
        kali-tools-web \

    && apt-get clean && apt-get autoremove -y \
    && rm -fr /var/lib/apt/lists/* \
