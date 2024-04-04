# Verify build and tests on Linux

FROM swift:5.10.0-amazonlinux2

WORKDIR /app/tmp
COPY . .

CMD swift package resolve \
    && swift build -c release \
    && swift test
