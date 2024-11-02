package android.nfc.cardemulation;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.util.proto.ProtoOutputStream;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ApduServiceInfo implements Parcelable {
    static final String AID_BASED_FALSE = "false";
    static final String AID_BASED_TRUE = "true";
    public static final Parcelable.Creator<ApduServiceInfo> CREATOR = new Parcelable.Creator<ApduServiceInfo>() { // from class: android.nfc.cardemulation.ApduServiceInfo.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public ApduServiceInfo createFromParcel(Parcel source) {
            ResolveInfo info = ResolveInfo.CREATOR.createFromParcel(source);
            String description = source.readString();
            boolean onHost = source.readInt() != 0;
            String offHostName = source.readString();
            String staticOffHostName = source.readString();
            ArrayList<AidGroup> staticAidGroups = new ArrayList<>();
            int numStaticGroups = source.readInt();
            if (numStaticGroups > 0) {
                source.readTypedList(staticAidGroups, AidGroup.CREATOR);
            }
            ArrayList<AidGroup> dynamicAidGroups = new ArrayList<>();
            int numDynamicGroups = source.readInt();
            if (numDynamicGroups > 0) {
                source.readTypedList(dynamicAidGroups, AidGroup.CREATOR);
            }
            boolean requiresUnlock = source.readInt() != 0;
            boolean requiresScreenOn = source.readInt() != 0;
            int bannerResource = source.readInt();
            int uid = source.readInt();
            String settingsActivityName = source.readString();
            boolean isSelected = source.readInt() != 0;
            boolean aidBased = source.readInt() != 0;
            boolean samsungExt = source.readInt() != 0;
            return new ApduServiceInfo(info, onHost, description, staticAidGroups, dynamicAidGroups, requiresUnlock, requiresScreenOn, bannerResource, uid, settingsActivityName, offHostName, staticOffHostName, isSelected, aidBased, samsungExt);
        }

        @Override // android.os.Parcelable.Creator
        public ApduServiceInfo[] newArray(int size) {
            return new ApduServiceInfo[size];
        }
    };
    static final String SE_PREFIX_ESE = "eSE";
    static final String SE_PREFIX_SIM = "SIM";
    static final String SE_PREFIX_UICC = "UICC";
    static final String TAG = "ApduServiceInfo";
    private boolean mAidBased;
    final int mBannerResourceId;
    final String mDescription;
    final HashMap<String, AidGroup> mDynamicAidGroups;
    String mOffHostName;
    final boolean mOnHost;
    private boolean mOtherServiceSelectionState;
    boolean mRequiresDeviceScreenOn;
    final boolean mRequiresDeviceUnlock;
    private boolean mSamsungExt;
    final ResolveInfo mService;
    final String mSettingsActivityName;
    final HashMap<String, AidGroup> mStaticAidGroups;
    String mStaticOffHostName;
    final int mUid;

    public ApduServiceInfo(ResolveInfo info, boolean onHost, String description, ArrayList<AidGroup> staticAidGroups, ArrayList<AidGroup> dynamicAidGroups, boolean requiresUnlock, int bannerResource, int uid, String settingsActivityName, String offHost, String staticOffHost) {
        this(info, onHost, description, staticAidGroups, dynamicAidGroups, requiresUnlock, onHost, bannerResource, uid, settingsActivityName, offHost, staticOffHost);
    }

    public ApduServiceInfo(ResolveInfo info, boolean onHost, String description, ArrayList<AidGroup> staticAidGroups, ArrayList<AidGroup> dynamicAidGroups, boolean requiresUnlock, boolean requiresScreenOn, int bannerResource, int uid, String settingsActivityName, String offHost, String staticOffHost, boolean isSelected, boolean aidBased, boolean samsungExt) {
        this(info, onHost, description, staticAidGroups, dynamicAidGroups, requiresUnlock, requiresScreenOn, bannerResource, uid, settingsActivityName, offHost, staticOffHost);
        this.mOtherServiceSelectionState = isSelected;
        this.mAidBased = aidBased;
        this.mSamsungExt = samsungExt;
        if (isExceptionalSPay()) {
            this.mRequiresDeviceScreenOn = false;
        } else {
            this.mRequiresDeviceScreenOn = requiresScreenOn;
        }
    }

    public ApduServiceInfo(ResolveInfo info, boolean onHost, String description, ArrayList<AidGroup> staticAidGroups, ArrayList<AidGroup> dynamicAidGroups, boolean requiresUnlock, boolean requiresScreenOn, int bannerResource, int uid, String settingsActivityName, String offHost, String staticOffHost) {
        this.mAidBased = true;
        this.mSamsungExt = false;
        this.mService = info;
        this.mDescription = description;
        this.mStaticAidGroups = new HashMap<>();
        this.mDynamicAidGroups = new HashMap<>();
        this.mOffHostName = offHost;
        this.mStaticOffHostName = staticOffHost;
        this.mOnHost = onHost;
        this.mRequiresDeviceUnlock = requiresUnlock;
        this.mRequiresDeviceScreenOn = requiresScreenOn;
        Iterator<AidGroup> it = staticAidGroups.iterator();
        while (it.hasNext()) {
            AidGroup aidGroup = it.next();
            this.mStaticAidGroups.put(aidGroup.category, aidGroup);
        }
        Iterator<AidGroup> it2 = dynamicAidGroups.iterator();
        while (it2.hasNext()) {
            AidGroup aidGroup2 = it2.next();
            this.mDynamicAidGroups.put(aidGroup2.category, aidGroup2);
        }
        this.mBannerResourceId = bannerResource;
        this.mUid = uid;
        this.mSettingsActivityName = settingsActivityName;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0075, code lost:
    
        if ("offhost-apdu-service".equals(r12) == false) goto L317;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007f, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException("Meta-data does not start with <offhost-apdu-service> tag");
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x044a, code lost:
    
        r23.mSamsungExt = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x044d, code lost:
    
        r15.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:?, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:236:0x04b3  */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v16, types: [android.content.res.XmlResourceParser] */
    /* JADX WARN: Type inference failed for: r15v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r15v23 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ApduServiceInfo(android.content.pm.PackageManager r24, android.content.pm.ResolveInfo r25, boolean r26) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1207
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.nfc.cardemulation.ApduServiceInfo.<init>(android.content.pm.PackageManager, android.content.pm.ResolveInfo, boolean):void");
    }

    public ComponentName getComponent() {
        return new ComponentName(this.mService.serviceInfo.packageName, this.mService.serviceInfo.name);
    }

    public String getOffHostSecureElement() {
        return this.mOffHostName;
    }

    public List<String> getAids() {
        ArrayList<String> aids = new ArrayList<>();
        Iterator<AidGroup> it = getAidGroups().iterator();
        while (it.hasNext()) {
            AidGroup group = it.next();
            aids.addAll(group.aids);
        }
        return aids;
    }

    public List<String> getPrefixAids() {
        ArrayList<String> prefixAids = new ArrayList<>();
        Iterator<AidGroup> it = getAidGroups().iterator();
        while (it.hasNext()) {
            AidGroup group = it.next();
            for (String aid : group.aids) {
                if (aid.endsWith("*")) {
                    prefixAids.add(aid);
                }
            }
        }
        return prefixAids;
    }

    public List<String> getSubsetAids() {
        ArrayList<String> subsetAids = new ArrayList<>();
        Iterator<AidGroup> it = getAidGroups().iterator();
        while (it.hasNext()) {
            AidGroup group = it.next();
            for (String aid : group.aids) {
                if (aid.endsWith("#")) {
                    subsetAids.add(aid);
                }
            }
        }
        return subsetAids;
    }

    public AidGroup getDynamicAidGroupForCategory(String category) {
        return this.mDynamicAidGroups.get(category);
    }

    public boolean removeDynamicAidGroupForCategory(String category) {
        return this.mDynamicAidGroups.remove(category) != null;
    }

    public ArrayList<AidGroup> getAidGroups() {
        ArrayList<AidGroup> groups = new ArrayList<>();
        Iterator<Map.Entry<String, AidGroup>> it = this.mDynamicAidGroups.entrySet().iterator();
        while (it.hasNext()) {
            groups.add(it.next().getValue());
        }
        for (Map.Entry<String, AidGroup> entry : this.mStaticAidGroups.entrySet()) {
            if (!this.mDynamicAidGroups.containsKey(entry.getKey())) {
                groups.add(entry.getValue());
            }
        }
        return groups;
    }

    public String getCategoryForAid(String aid) {
        ArrayList<AidGroup> groups = getAidGroups();
        Iterator<AidGroup> it = groups.iterator();
        while (it.hasNext()) {
            AidGroup group = it.next();
            if (group.aids.contains(aid.toUpperCase())) {
                return group.category;
            }
        }
        return null;
    }

    public String getCategoryForPrefixAid(String aid) {
        ArrayList<AidGroup> groups = getAidGroups();
        Iterator<AidGroup> it = groups.iterator();
        while (it.hasNext()) {
            AidGroup group = it.next();
            for (String a : group.aids) {
                if (a.endsWith("*")) {
                    String newAid = a.substring(0, a.length() - 1);
                    if (aid.toUpperCase().startsWith(newAid.toUpperCase())) {
                        return group.category;
                    }
                }
            }
        }
        return null;
    }

    public boolean hasCategory(String category) {
        return this.mStaticAidGroups.containsKey(category) || this.mDynamicAidGroups.containsKey(category) || (!isAidBased() && "other".equals(category));
    }

    public boolean isOnHost() {
        return this.mOnHost;
    }

    public boolean requiresUnlock() {
        return this.mRequiresDeviceUnlock;
    }

    public boolean requiresScreenOn() {
        return this.mRequiresDeviceScreenOn;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public int getUid() {
        return this.mUid;
    }

    public void setOrReplaceDynamicAidGroup(AidGroup aidGroup) {
        this.mDynamicAidGroups.put(aidGroup.getCategory(), aidGroup);
    }

    public void setOffHostSecureElement(String offHost) {
        this.mOffHostName = offHost;
    }

    public void unsetOffHostSecureElement() {
        this.mOffHostName = this.mStaticOffHostName;
    }

    public CharSequence loadLabel(PackageManager pm) {
        return this.mService.loadLabel(pm);
    }

    public CharSequence loadAppLabel(PackageManager pm) {
        try {
            return pm.getApplicationLabel(pm.getApplicationInfo(this.mService.resolvePackageName, 128));
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public Drawable loadIcon(PackageManager pm) {
        return this.mService.loadIcon(pm);
    }

    public Drawable loadBanner(PackageManager pm) {
        try {
            Resources res = pm.getResourcesForApplication(this.mService.serviceInfo.packageName);
            Drawable banner = res.getDrawable(this.mBannerResourceId);
            return banner;
        } catch (Exception | OutOfMemoryError e) {
            Log.e(TAG, "Could not load banner.");
            return null;
        }
    }

    public boolean isAidBased() {
        return this.mAidBased;
    }

    public void setAidBased(boolean aidBased) {
        this.mAidBased = aidBased;
    }

    public String getSettingsActivityName() {
        return this.mSettingsActivityName;
    }

    public String toString() {
        StringBuilder out = new StringBuilder("ApduService: ");
        out.append(getComponent());
        out.append(", UID: " + this.mUid);
        out.append(", description: " + this.mDescription);
        out.append(", Static AID Groups: ");
        for (AidGroup aidGroup : this.mStaticAidGroups.values()) {
            out.append(aidGroup.toString());
        }
        out.append(", Dynamic AID Groups: ");
        for (AidGroup aidGroup2 : this.mDynamicAidGroups.values()) {
            out.append(aidGroup2.toString());
        }
        return out.toString();
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof ApduServiceInfo)) {
            return false;
        }
        ApduServiceInfo thatService = (ApduServiceInfo) o;
        return thatService.getComponent().equals(getComponent()) && thatService.getUid() == getUid();
    }

    public int hashCode() {
        return getComponent().hashCode();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        this.mService.writeToParcel(parcel, i);
        parcel.writeString(this.mDescription);
        parcel.writeInt(this.mOnHost ? 1 : 0);
        parcel.writeString(this.mOffHostName);
        parcel.writeString(this.mStaticOffHostName);
        parcel.writeInt(this.mStaticAidGroups.size());
        if (this.mStaticAidGroups.size() > 0) {
            parcel.writeTypedList(new ArrayList(this.mStaticAidGroups.values()));
        }
        parcel.writeInt(this.mDynamicAidGroups.size());
        if (this.mDynamicAidGroups.size() > 0) {
            parcel.writeTypedList(new ArrayList(this.mDynamicAidGroups.values()));
        }
        parcel.writeInt(this.mRequiresDeviceUnlock ? 1 : 0);
        parcel.writeInt(this.mRequiresDeviceScreenOn ? 1 : 0);
        parcel.writeInt(this.mBannerResourceId);
        parcel.writeInt(this.mUid);
        parcel.writeString(this.mSettingsActivityName);
        parcel.writeInt(this.mOtherServiceSelectionState ? 1 : 0);
        parcel.writeInt(this.mAidBased ? 1 : 0);
        parcel.writeInt(this.mSamsungExt ? 1 : 0);
    }

    /* renamed from: android.nfc.cardemulation.ApduServiceInfo$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<ApduServiceInfo> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public ApduServiceInfo createFromParcel(Parcel source) {
            ResolveInfo info = ResolveInfo.CREATOR.createFromParcel(source);
            String description = source.readString();
            boolean onHost = source.readInt() != 0;
            String offHostName = source.readString();
            String staticOffHostName = source.readString();
            ArrayList<AidGroup> staticAidGroups = new ArrayList<>();
            int numStaticGroups = source.readInt();
            if (numStaticGroups > 0) {
                source.readTypedList(staticAidGroups, AidGroup.CREATOR);
            }
            ArrayList<AidGroup> dynamicAidGroups = new ArrayList<>();
            int numDynamicGroups = source.readInt();
            if (numDynamicGroups > 0) {
                source.readTypedList(dynamicAidGroups, AidGroup.CREATOR);
            }
            boolean requiresUnlock = source.readInt() != 0;
            boolean requiresScreenOn = source.readInt() != 0;
            int bannerResource = source.readInt();
            int uid = source.readInt();
            String settingsActivityName = source.readString();
            boolean isSelected = source.readInt() != 0;
            boolean aidBased = source.readInt() != 0;
            boolean samsungExt = source.readInt() != 0;
            return new ApduServiceInfo(info, onHost, description, staticAidGroups, dynamicAidGroups, requiresUnlock, requiresScreenOn, bannerResource, uid, settingsActivityName, offHostName, staticOffHostName, isSelected, aidBased, samsungExt);
        }

        @Override // android.os.Parcelable.Creator
        public ApduServiceInfo[] newArray(int size) {
            return new ApduServiceInfo[size];
        }
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("    " + getComponent() + " (Description: " + getDescription() + ") (UID: " + getUid() + NavigationBarInflaterView.KEY_CODE_END);
        if (this.mOnHost) {
            pw.println("    On Host Service");
        } else {
            pw.println("    Off-host Service");
            pw.println("        Current off-host SE:" + this.mOffHostName + " static off-host SE:" + this.mStaticOffHostName);
        }
        pw.println("    Static AID groups:");
        for (AidGroup group : this.mStaticAidGroups.values()) {
            pw.println("        Category: " + group.category + "(selected: " + this.mOtherServiceSelectionState + NavigationBarInflaterView.KEY_CODE_END);
            for (String aid : group.aids) {
                pw.println("            AID: " + aid);
            }
        }
        pw.println("    Dynamic AID groups:");
        for (AidGroup group2 : this.mDynamicAidGroups.values()) {
            pw.println("        Category: " + group2.category + "(selected: " + this.mOtherServiceSelectionState + NavigationBarInflaterView.KEY_CODE_END);
            for (String aid2 : group2.aids) {
                pw.println("            AID: " + aid2);
            }
        }
        pw.println("    Settings Activity: " + this.mSettingsActivityName);
        pw.println("    Requires Device Unlock: " + this.mRequiresDeviceUnlock);
        pw.println("    Requires Device ScreenOn: " + this.mRequiresDeviceScreenOn);
        pw.println("    AID-based: " + this.mAidBased);
        pw.println("    EXT: " + this.mSamsungExt);
    }

    public void setOtherServiceState(boolean selected) {
        this.mOtherServiceSelectionState = selected;
    }

    public boolean isSelectedOtherService() {
        return this.mOtherServiceSelectionState;
    }

    public boolean isSamsungExtensionService() {
        return this.mSamsungExt;
    }

    public boolean isExceptionalSPay() {
        if (this.mService.serviceInfo.applicationInfo.targetSdkVersion >= 31) {
            return false;
        }
        String[] exceptionPackages = {"com.samsung.android.spayfw.core.hce.SPayHCEService"};
        for (String serviceName : exceptionPackages) {
            if (serviceName.equals(this.mService.serviceInfo.name)) {
                return true;
            }
        }
        return false;
    }

    public void dumpDebug(ProtoOutputStream proto) {
        Utils.dumpDebugComponentName(getComponent(), proto, 1146756268033L);
        proto.write(1138166333442L, getDescription());
        proto.write(1133871366147L, this.mOnHost);
        if (!this.mOnHost) {
            proto.write(1138166333444L, this.mOffHostName);
            proto.write(1138166333445L, this.mStaticOffHostName);
        }
        for (AidGroup group : this.mStaticAidGroups.values()) {
            long token = proto.start(2246267895814L);
            group.dump(proto);
            proto.end(token);
        }
        for (AidGroup group2 : this.mDynamicAidGroups.values()) {
            long token2 = proto.start(2246267895814L);
            group2.dump(proto);
            proto.end(token2);
        }
        proto.write(1138166333448L, this.mSettingsActivityName);
    }
}
