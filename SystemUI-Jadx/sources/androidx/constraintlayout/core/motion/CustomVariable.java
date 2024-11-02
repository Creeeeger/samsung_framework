package androidx.constraintlayout.core.motion;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.ArrayLinkedVariables$$ExternalSyntheticOutline0;
import com.samsung.android.knox.net.vpn.VpnErrorValues;
import com.samsung.android.nexus.video.VideoPlayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CustomVariable {
    public boolean mBooleanValue;
    public float mFloatValue;
    public int mIntegerValue;
    public final String mName;
    public String mStringValue;
    public final int mType;

    public CustomVariable(CustomVariable customVariable) {
        this.mIntegerValue = VideoPlayer.MEDIA_ERROR_SYSTEM;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = customVariable.mName;
        this.mType = customVariable.mType;
        this.mIntegerValue = customVariable.mIntegerValue;
        this.mFloatValue = customVariable.mFloatValue;
        this.mStringValue = customVariable.mStringValue;
        this.mBooleanValue = customVariable.mBooleanValue;
    }

    public final void setValue(Object obj) {
        switch (this.mType) {
            case 900:
            case 906:
                this.mIntegerValue = ((Integer) obj).intValue();
                return;
            case 901:
                this.mFloatValue = ((Float) obj).floatValue();
                return;
            case VpnErrorValues.ERROR_USB_TETHERING_FAILED /* 902 */:
                this.mIntegerValue = ((Integer) obj).intValue();
                return;
            case 903:
                this.mStringValue = (String) obj;
                return;
            case 904:
                this.mBooleanValue = ((Boolean) obj).booleanValue();
                return;
            case 905:
                this.mFloatValue = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }

    public final String toString() {
        String str = this.mName + ':';
        switch (this.mType) {
            case 900:
                StringBuilder m = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(str);
                m.append(this.mIntegerValue);
                return m.toString();
            case 901:
                StringBuilder m2 = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(str);
                m2.append(this.mFloatValue);
                return m2.toString();
            case VpnErrorValues.ERROR_USB_TETHERING_FAILED /* 902 */:
                StringBuilder m3 = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(str);
                m3.append("#" + ("00000000" + Integer.toHexString(this.mIntegerValue)).substring(r3.length() - 8));
                return m3.toString();
            case 903:
                StringBuilder m4 = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(str);
                m4.append(this.mStringValue);
                return m4.toString();
            case 904:
                StringBuilder m5 = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(str);
                m5.append(Boolean.valueOf(this.mBooleanValue));
                return m5.toString();
            case 905:
                StringBuilder m6 = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(str);
                m6.append(this.mFloatValue);
                return m6.toString();
            default:
                return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "????");
        }
    }

    public CustomVariable(String str, int i, String str2) {
        this.mIntegerValue = VideoPlayer.MEDIA_ERROR_SYSTEM;
        this.mFloatValue = Float.NaN;
        this.mName = str;
        this.mType = i;
        this.mStringValue = str2;
    }

    public CustomVariable(String str, int i, int i2) {
        this.mIntegerValue = VideoPlayer.MEDIA_ERROR_SYSTEM;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i;
        if (i == 901) {
            this.mFloatValue = i2;
        } else {
            this.mIntegerValue = i2;
        }
    }

    public CustomVariable(String str, int i, float f) {
        this.mIntegerValue = VideoPlayer.MEDIA_ERROR_SYSTEM;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i;
        this.mFloatValue = f;
    }

    public CustomVariable(String str, int i, boolean z) {
        this.mIntegerValue = VideoPlayer.MEDIA_ERROR_SYSTEM;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i;
        this.mBooleanValue = z;
    }

    public CustomVariable(String str, int i) {
        this.mIntegerValue = VideoPlayer.MEDIA_ERROR_SYSTEM;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i;
    }

    public CustomVariable(String str, int i, Object obj) {
        this.mIntegerValue = VideoPlayer.MEDIA_ERROR_SYSTEM;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i;
        setValue(obj);
    }

    public CustomVariable(CustomVariable customVariable, Object obj) {
        this.mIntegerValue = VideoPlayer.MEDIA_ERROR_SYSTEM;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = customVariable.mName;
        this.mType = customVariable.mType;
        setValue(obj);
    }
}
