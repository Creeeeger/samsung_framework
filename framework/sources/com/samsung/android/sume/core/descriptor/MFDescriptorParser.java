package com.samsung.android.sume.core.descriptor;

import java.io.InputStream;

/* loaded from: classes4.dex */
public interface MFDescriptorParser {

    /* loaded from: classes4.dex */
    public enum Type {
        JSON
    }

    MFDescriptor parse(InputStream inputStream);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.samsung.android.sume.core.descriptor.MFDescriptorParser$1 */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$samsung$android$sume$core$descriptor$MFDescriptorParser$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$com$samsung$android$sume$core$descriptor$MFDescriptorParser$Type = iArr;
            try {
                iArr[Type.JSON.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    static MFDescriptorParser of(Type type) {
        switch (AnonymousClass1.$SwitchMap$com$samsung$android$sume$core$descriptor$MFDescriptorParser$Type[type.ordinal()]) {
            case 1:
                return new MFDescriptorJsonParser();
            default:
                throw new UnsupportedOperationException("unknown type");
        }
    }
}
