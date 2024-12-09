package com.sun.activation.registries;

import com.sec.internal.ims.core.handler.secims.imsCommonStruc.MNO;

/* loaded from: classes.dex */
public class MailcapTokenizer {
    private String data;
    private int dataLength;
    private int dataIndex = 0;
    private int currentToken = 1;
    private String currentTokenValue = "";
    private boolean isAutoquoting = false;
    private char autoquoteChar = ';';

    private static boolean isSpecialChar(char c) {
        if (c != '\"' && c != ',' && c != '/' && c != '(' && c != ')') {
            switch (c) {
                default:
                    switch (c) {
                        case '[':
                        case MNO.ORANGE_POLAND /* 92 */:
                        case ']':
                            break;
                        default:
                            return false;
                    }
                case ':':
                case ';':
                case '<':
                case '=':
                case '>':
                case '?':
                case '@':
                    return true;
            }
        }
        return true;
    }

    public static String nameForToken(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 5 ? i != 47 ? i != 59 ? i != 61 ? "really unknown" : "'='" : "';'" : "'/'" : "EOI" : "string" : "start" : "unknown";
    }

    public MailcapTokenizer(String str) {
        this.data = str;
        this.dataLength = str.length();
    }

    public void setIsAutoquoting(boolean z) {
        this.isAutoquoting = z;
    }

    public String getCurrentTokenValue() {
        return this.currentTokenValue;
    }

    public int nextToken() {
        if (this.dataIndex < this.dataLength) {
            while (true) {
                int i = this.dataIndex;
                if (i >= this.dataLength || !isWhiteSpaceChar(this.data.charAt(i))) {
                    break;
                }
                this.dataIndex++;
            }
            int i2 = this.dataIndex;
            if (i2 < this.dataLength) {
                char charAt = this.data.charAt(i2);
                if (this.isAutoquoting) {
                    if (charAt == ';' || charAt == '=') {
                        this.currentToken = charAt;
                        this.currentTokenValue = new Character(charAt).toString();
                        this.dataIndex++;
                    } else {
                        processAutoquoteToken();
                    }
                } else if (isStringTokenChar(charAt)) {
                    processStringToken();
                } else if (charAt == '/' || charAt == ';' || charAt == '=') {
                    this.currentToken = charAt;
                    this.currentTokenValue = new Character(charAt).toString();
                    this.dataIndex++;
                } else {
                    this.currentToken = 0;
                    this.currentTokenValue = new Character(charAt).toString();
                    this.dataIndex++;
                }
            } else {
                this.currentToken = 5;
                this.currentTokenValue = null;
            }
        } else {
            this.currentToken = 5;
            this.currentTokenValue = null;
        }
        return this.currentToken;
    }

    private void processStringToken() {
        int i = this.dataIndex;
        while (true) {
            int i2 = this.dataIndex;
            if (i2 >= this.dataLength || !isStringTokenChar(this.data.charAt(i2))) {
                break;
            } else {
                this.dataIndex++;
            }
        }
        this.currentToken = 2;
        this.currentTokenValue = this.data.substring(i, this.dataIndex);
    }

    private void processAutoquoteToken() {
        int i;
        int i2 = this.dataIndex;
        boolean z = false;
        while (true) {
            i = this.dataIndex;
            if (i >= this.dataLength || z) {
                break;
            } else if (this.data.charAt(i) != this.autoquoteChar) {
                this.dataIndex++;
            } else {
                z = true;
            }
        }
        this.currentToken = 2;
        this.currentTokenValue = fixEscapeSequences(this.data.substring(i2, i));
    }

    private static boolean isControlChar(char c) {
        return Character.isISOControl(c);
    }

    private static boolean isWhiteSpaceChar(char c) {
        return Character.isWhitespace(c);
    }

    private static boolean isStringTokenChar(char c) {
        return (isSpecialChar(c) || isControlChar(c) || isWhiteSpaceChar(c)) ? false : true;
    }

    private static String fixEscapeSequences(String str) {
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.ensureCapacity(length);
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt != '\\') {
                stringBuffer.append(charAt);
            } else if (i < length - 1) {
                i++;
                stringBuffer.append(str.charAt(i));
            } else {
                stringBuffer.append(charAt);
            }
            i++;
        }
        return stringBuffer.toString();
    }
}
