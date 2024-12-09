package com.sec.internal.ims.cmstore.params;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.ims.cmstore.params.ParamVvmUpdate;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class ParamVvmUpdate {

    @SerializedName(CloudMessageProviderContract.VVMGreetingColumns.DURATION)
    public int mDuration;

    @SerializedName("email1")
    public String mEmail1;

    @SerializedName("email2")
    public String mEmail2;

    @SerializedName(CloudMessageProviderContract.VVMAccountInfoColumns.GREETING_TYPE)
    public String mGreetingType;

    @SerializedName("filePath")
    public String mGreetingUri;

    @SerializedName("id")
    public int mId;

    @SerializedName("preferred_line")
    public String mLine;

    @SerializedName("mimeType")
    public String mMimeType;

    @SerializedName("new")
    public String mNewPwd;

    @SerializedName("old")
    public String mOldPwd;

    @SerializedName("type")
    public String mType;

    @SerializedName("v2tlang")
    public String mV2tLang;
    public VvmTypeChange mVvmChange;

    @SerializedName("fileName")
    public String mfileName;

    @SerializedName(CloudMessageProviderContract.VVMAccountInfoColumns.V2T_EMAIL)
    public String mv2t_email;

    @SerializedName(CloudMessageProviderContract.VVMAccountInfoColumns.V2T_SMS)
    public String mv2t_sms;

    public enum VvmTypeChange {
        ACTIVATE(0),
        DEACTIVATE(1),
        VOICEMAILTOTEXT(2),
        GREETING(3),
        PIN(4),
        FULLPROFILE(5),
        NUTOFF(6),
        NUTON(7),
        V2TLANGUAGE(8),
        V2T_SMS(9),
        V2T_EMAIL(10),
        ADHOC_V2T(11);

        private final int mId;

        VvmTypeChange(int i) {
            this.mId = i;
        }

        public int getId() {
            return this.mId;
        }
    }

    public enum GreetingOnFlag {
        GreetingOff(0),
        GreetingOn(1);

        private final int mId;

        GreetingOnFlag(int i) {
            this.mId = i;
        }

        public int getId() {
            return this.mId;
        }
    }

    public enum VvmGreetingType {
        Default(0, ""),
        Name(1, "voice-signature"),
        Custom(2, "normal-greeting"),
        Busy(3, "busy-greeting"),
        ExtendAbsence(4, "extended-absence-greeting"),
        Fun(5, "fun-greeting");

        private final int mId;
        private String mName;

        VvmGreetingType(int i, String str) {
            this.mId = i;
            this.mName = str;
        }

        public int getId() {
            return this.mId;
        }

        public String getName() {
            return this.mName;
        }

        public static VvmGreetingType valueOf(final int i) {
            return (VvmGreetingType) Arrays.stream(values()).filter(new Predicate() { // from class: com.sec.internal.ims.cmstore.params.ParamVvmUpdate$VvmGreetingType$$ExternalSyntheticLambda1
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$valueOf$0;
                    lambda$valueOf$0 = ParamVvmUpdate.VvmGreetingType.lambda$valueOf$0(i, (ParamVvmUpdate.VvmGreetingType) obj);
                    return lambda$valueOf$0;
                }
            }).findFirst().get();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$valueOf$0(int i, VvmGreetingType vvmGreetingType) {
            return vvmGreetingType.mId == i;
        }

        public static int nameOf(final String str) {
            return ((VvmGreetingType) Arrays.stream(values()).filter(new Predicate() { // from class: com.sec.internal.ims.cmstore.params.ParamVvmUpdate$VvmGreetingType$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$nameOf$1;
                    lambda$nameOf$1 = ParamVvmUpdate.VvmGreetingType.lambda$nameOf$1(str, (ParamVvmUpdate.VvmGreetingType) obj);
                    return lambda$nameOf$1;
                }
            }).findFirst().get()).getId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$nameOf$1(String str, VvmGreetingType vvmGreetingType) {
            return vvmGreetingType.getName().equalsIgnoreCase(str);
        }
    }

    public String toString() {
        return "ParamVvmUpdate [mVvmChange= " + this.mVvmChange + " mGreetingUri = " + IMSLog.checker(this.mGreetingUri) + " mLine = " + IMSLog.checker(this.mLine) + " mOldPwd = " + (!TextUtils.isEmpty(this.mOldPwd) ? "xxxx" : null) + " mNewPwd = " + (TextUtils.isEmpty(this.mNewPwd) ? null : "****") + " mEmail1 = " + IMSLog.checker(this.mEmail1) + " mEmail2 = " + IMSLog.checker(this.mEmail2) + " mDuration = " + this.mDuration + " mType = " + this.mType + " mId = " + this.mId + " mMimeType = " + this.mMimeType + " mfileName = " + this.mfileName + " mGreetingType = " + this.mGreetingType + " mV2tLang = " + this.mV2tLang + "]";
    }
}
