package com.google.protobuf;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TextFormatEscaper {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.google.protobuf.TextFormatEscaper$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 {
        public final /* synthetic */ ByteString val$input;

        public AnonymousClass1(ByteString byteString) {
            this.val$input = byteString;
        }
    }

    private TextFormatEscaper() {
    }

    public static String escapeBytes(ByteString byteString) {
        ByteString byteString2 = new AnonymousClass1(byteString).val$input;
        StringBuilder sb = new StringBuilder(byteString2.size());
        for (int i = 0; i < byteString2.size(); i++) {
            byte byteAt = byteString2.byteAt(i);
            if (byteAt != 34) {
                if (byteAt != 39) {
                    if (byteAt != 92) {
                        switch (byteAt) {
                            case 7:
                                sb.append("\\a");
                                break;
                            case 8:
                                sb.append("\\b");
                                break;
                            case 9:
                                sb.append("\\t");
                                break;
                            case 10:
                                sb.append("\\n");
                                break;
                            case 11:
                                sb.append("\\v");
                                break;
                            case 12:
                                sb.append("\\f");
                                break;
                            case 13:
                                sb.append("\\r");
                                break;
                            default:
                                if (byteAt >= 32 && byteAt <= 126) {
                                    sb.append((char) byteAt);
                                    break;
                                } else {
                                    sb.append('\\');
                                    sb.append((char) (((byteAt >>> 6) & 3) + 48));
                                    sb.append((char) (((byteAt >>> 3) & 7) + 48));
                                    sb.append((char) ((byteAt & 7) + 48));
                                    break;
                                }
                        }
                    } else {
                        sb.append("\\\\");
                    }
                } else {
                    sb.append("\\'");
                }
            } else {
                sb.append("\\\"");
            }
        }
        return sb.toString();
    }
}
