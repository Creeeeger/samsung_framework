package com.sec.internal.ims.settings;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.SemSystemProperties;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.stream.JsonReader;
import com.sec.ims.settings.ImsProfile;
import com.sec.imsservice.R;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.JsonUtil;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class ImsProfileCache {
    private ImsAutoUpdate mAutoUpdate;
    private final Context mContext;
    private boolean mIsMvno;
    private String mMnoName;
    private String mPMnoName;
    private int mPhoneId;
    private final String TAG = ImsProfileCache.class.getSimpleName();
    private final String BUILD_INFO = "buildinfo";
    private int mNextId = 1;
    private final Map<Integer, ImsProfile> mProfileMap = new ArrayMap();
    private ImsProfile mProfileGlobalGC = null;

    public ImsProfileCache(Context context, String str, int i) {
        this.mPhoneId = -1;
        this.mContext = context;
        this.mMnoName = str;
        int indexOf = str.indexOf(Mno.MVNO_DELIMITER);
        if (indexOf != -1) {
            this.mIsMvno = true;
            this.mPMnoName = this.mMnoName.substring(0, indexOf);
        } else {
            this.mIsMvno = false;
            this.mPMnoName = "";
        }
        this.mAutoUpdate = ImsAutoUpdate.getInstance(context, i);
        this.mPhoneId = i;
    }

    private boolean isVersionUpdated() {
        String str = SemSystemProperties.get("ro.build.PDA", "");
        String str2 = SemSystemProperties.get("ril.official_cscver", "");
        String string = ImsSharedPrefHelper.getString(this.mPhoneId, this.mContext, ImsSharedPrefHelper.IMS_PROFILE, "buildinfo", "");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        return !string.equals(sb.toString());
    }

    private void saveBuildInfo() {
        ImsSharedPrefHelper.save(this.mPhoneId, this.mContext, ImsSharedPrefHelper.IMS_PROFILE, "buildinfo", SemSystemProperties.get("ro.build.PDA", "") + "_" + SemSystemProperties.get("ril.official_cscver", ""));
    }

    public void load(boolean z) {
        Map<String, ?> all = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, ImsSharedPrefHelper.IMS_PROFILE, 0, false).getAll();
        Log.i(this.TAG, "load: mMnoName: " + this.mMnoName + ", mPMnoName: " + this.mPMnoName);
        if (this.mAutoUpdate.isUpdateNeeded() || all.isEmpty() || isVersionUpdated() || z) {
            Log.i(this.TAG, "load: map empty or version update or autoupdate needed or SIM MNO changed.");
            createProfileMap();
        } else {
            all.remove("buildinfo");
            ArrayMap arrayMap = new ArrayMap();
            ArrayMap arrayMap2 = new ArrayMap();
            synchronized (this) {
                Iterator<?> it = all.values().iterator();
                while (it.hasNext()) {
                    ImsProfile imsProfile = new ImsProfile((String) it.next());
                    if (TextUtils.isEmpty(imsProfile.getName())) {
                        Log.e(this.TAG, "load: Invalid ImsProfile from sharedpref, reset to default");
                        createProfileMap();
                        return;
                    }
                    Log.i(this.TAG, "load: MnoName: " + imsProfile.getMnoName() + ", Name: " + imsProfile.getName());
                    this.mNextId = Math.max(this.mNextId, imsProfile.getId() + 1);
                    if (this.mIsMvno) {
                        if (TextUtils.equals(imsProfile.getMnoName(), this.mPMnoName)) {
                            arrayMap2.put(Integer.valueOf(imsProfile.getId()), imsProfile);
                        } else if (TextUtils.equals(imsProfile.getMnoName(), this.mMnoName)) {
                            arrayMap.put(Integer.valueOf(imsProfile.getId()), imsProfile);
                        }
                    } else if (TextUtils.equals(imsProfile.getMnoName(), this.mMnoName)) {
                        arrayMap.put(Integer.valueOf(imsProfile.getId()), imsProfile);
                    }
                }
                if (arrayMap.isEmpty() && arrayMap2.isEmpty() && !TextUtils.equals("DEFAULT", this.mMnoName)) {
                    Log.e(this.TAG, "load: Currently mno info different from mno is included in the SP");
                    createProfileMap();
                    return;
                }
                synchronized (this.mProfileMap) {
                    this.mProfileMap.clear();
                    if (this.mIsMvno) {
                        if (arrayMap.isEmpty()) {
                            Log.e(this.TAG, "load: This mno is MVNO but no profile defined. Use Parent profiles");
                            this.mProfileMap.putAll(arrayMap2);
                        } else {
                            this.mProfileMap.putAll(arrayMap);
                        }
                    } else {
                        this.mProfileMap.putAll(arrayMap);
                    }
                }
            }
        }
        Log.i(this.TAG, "load: mProfileMap size: " + this.mProfileMap.size());
    }

    private void createProfileMap() {
        clearAllFromStorage();
        initFromResource();
    }

    private static void removeNote(JsonElement jsonElement) {
        try {
            JsonObject asJsonObject = jsonElement.getAsJsonObject();
            while (asJsonObject.has("note")) {
                asJsonObject.remove("note");
            }
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    public void initFromResource() {
        List<ImsProfile> init = init(false, this.mMnoName);
        Log.i(this.TAG, "initFromResource : Save to storage");
        SharedPreferences.Editor edit = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, ImsSharedPrefHelper.IMS_PROFILE, 0, false).edit();
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        for (ImsProfile imsProfile : init) {
            edit.putString(String.valueOf(imsProfile.getId()), imsProfile.toJson());
            if (this.mIsMvno) {
                if (TextUtils.equals(imsProfile.getMnoName(), this.mPMnoName)) {
                    arrayMap2.put(Integer.valueOf(imsProfile.getId()), imsProfile);
                } else if (TextUtils.equals(imsProfile.getMnoName(), this.mMnoName)) {
                    arrayMap.put(Integer.valueOf(imsProfile.getId()), imsProfile);
                }
            } else if (TextUtils.equals(imsProfile.getMnoName(), this.mMnoName)) {
                arrayMap.put(Integer.valueOf(imsProfile.getId()), imsProfile);
            }
        }
        edit.apply();
        Log.i(this.TAG, "initFromResource : Prepare local cache");
        synchronized (this.mProfileMap) {
            this.mProfileMap.clear();
            if (this.mIsMvno) {
                if (arrayMap.isEmpty()) {
                    Log.e(this.TAG, "init: This mno is MVNO but no profile defined. Use Parent profiles");
                    this.mProfileMap.putAll(arrayMap2);
                } else {
                    this.mProfileMap.putAll(arrayMap);
                }
            } else {
                this.mProfileMap.putAll(arrayMap);
            }
        }
        Log.i(this.TAG, "initFromResource : mProfileMap size: " + this.mProfileMap.size());
        saveBuildInfo();
    }

    private List<ImsProfile> init(boolean z, String str) {
        ArrayList arrayList = new ArrayList();
        Log.i(this.TAG, "init : imsprofile.json");
        if (!z && TextUtils.isEmpty(str)) {
            Log.e(this.TAG, "init: selection is empty. Return no profile.");
            return arrayList;
        }
        JsonParser jsonParser = new JsonParser();
        JsonReader jsonReader = new JsonReader(new BufferedReader(new InputStreamReader(this.mContext.getResources().openRawResource(R.raw.imsprofile))));
        JsonElement parse = jsonParser.parse(jsonReader);
        try {
            jsonReader.close();
        } catch (IOException unused) {
            Log.e(this.TAG, "init: Close failed. Keep going");
        }
        JsonArray asJsonArray = parse.getAsJsonObject().getAsJsonArray("profile");
        if (asJsonArray == null || asJsonArray.isJsonNull()) {
            Log.e(this.TAG, "init: parse failed.");
            return arrayList;
        }
        JsonArray jsonArray = new JsonArray();
        JsonElement jsonElement = JsonNull.INSTANCE;
        synchronized (this) {
            this.mNextId = 1;
            Iterator it = asJsonArray.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                JsonElement jsonElement2 = (JsonElement) it.next();
                JsonElement asJsonObject = jsonElement2.getAsJsonObject();
                if (!TextUtils.equals(jsonElement2.getAsJsonObject().get("name").getAsString(), "default")) {
                    int i = this.mNextId;
                    this.mNextId = i + 1;
                    asJsonObject.addProperty("id", String.valueOf(i));
                    if (z) {
                        jsonArray.add(asJsonObject);
                    } else {
                        if (TextUtils.equals(str, "GoogleGC_ALL") && asJsonObject.get("mnoname").getAsString().equals("GoogleGC_ALL")) {
                            jsonArray.add(asJsonObject);
                            break;
                        }
                        if ((asJsonObject.get("mdmn_type") != null && asJsonObject.get("mdmn_type").getAsString().equals(str)) || asJsonObject.get("mnoname").getAsString().startsWith(str.split(":")[0])) {
                            jsonArray.add(asJsonObject);
                        }
                    }
                } else {
                    jsonElement = asJsonObject;
                }
            }
        }
        if (jsonElement.isJsonNull()) {
            Log.e(this.TAG, "init: No default profile.");
            return arrayList;
        }
        JsonElement applyImsProfileUpdate = this.mAutoUpdate.applyImsProfileUpdate(jsonArray, str);
        if (!applyImsProfileUpdate.isJsonNull() && applyImsProfileUpdate.isJsonArray()) {
            jsonArray = applyImsProfileUpdate.getAsJsonArray();
        }
        Log.d(this.TAG, "init: Found " + jsonArray.size() + " profiles to merge.");
        synchronized (this) {
            Iterator it2 = jsonArray.iterator();
            while (it2.hasNext()) {
                JsonElement merge = JsonUtil.merge(jsonElement, (JsonElement) it2.next());
                if (merge.isJsonNull()) {
                    Log.e(this.TAG, "init: merge failed! check json is valid.");
                } else {
                    removeNote(merge);
                    ImsProfile imsProfile = new ImsProfile(merge.toString());
                    if (imsProfile.getId() == 0) {
                        Log.d(this.TAG, "init: profile name[" + imsProfile.getName() + "]");
                        int i2 = this.mNextId;
                        this.mNextId = i2 + 1;
                        imsProfile.setId(i2);
                    }
                    arrayList.add(imsProfile);
                }
            }
            Log.i(this.TAG, "init: merge completed. " + arrayList.size() + " profiles initiated.");
        }
        return arrayList;
    }

    public void resetToDefault() {
        load(true);
    }

    public List<ImsProfile> getProfileListByMnoName(String str) {
        return getProfileListByMnoName(str, false);
    }

    public List<ImsProfile> getProfileListByMnoName(String str, boolean z) {
        boolean z2;
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            if (TextUtils.equals(this.mMnoName, str)) {
                Log.d(this.TAG, "getProfileList by loaded mno - " + str);
                synchronized (this.mProfileMap) {
                    for (ImsProfile imsProfile : this.mProfileMap.values()) {
                        if (!z || imsProfile.hasService("mmtel")) {
                            arrayList.add(new ImsProfile(imsProfile));
                        }
                    }
                }
            } else {
                int indexOf = str.indexOf(Mno.MVNO_DELIMITER);
                String str2 = "";
                if (indexOf != -1) {
                    str2 = str.substring(0, indexOf);
                    z2 = true;
                } else {
                    z2 = false;
                }
                Log.i(this.TAG, "getProfileList by new mno - " + str + ", loaded mno - " + this.mMnoName + ", isMvno - " + z2);
                ArrayList arrayList2 = new ArrayList();
                for (ImsProfile imsProfile2 : init(false, str)) {
                    if (TextUtils.equals(imsProfile2.getMnoName(), str) && (!z || imsProfile2.hasService("mmtel"))) {
                        arrayList.add(new ImsProfile(imsProfile2));
                    }
                    if (z2 && TextUtils.equals(imsProfile2.getMnoName(), str2)) {
                        Log.d(this.TAG, "getProfileList by new mno - " + str + ", Parent mno - " + imsProfile2.getMnoName());
                        if (!z || imsProfile2.hasService("mmtel")) {
                            arrayList2.add(new ImsProfile(imsProfile2));
                        }
                    }
                    if (z && this.mProfileGlobalGC == null && TextUtils.equals(imsProfile2.getMnoName(), "GoogleGC_ALL")) {
                        this.mProfileGlobalGC = new ImsProfile(imsProfile2);
                    }
                }
                if (z2 && arrayList.isEmpty()) {
                    arrayList = (ArrayList) arrayList2.clone();
                }
            }
            if (z) {
                ImsProfile imsProfile3 = this.mProfileGlobalGC;
                if (imsProfile3 != null) {
                    arrayList.add(imsProfile3);
                } else {
                    for (ImsProfile imsProfile4 : init(false, "GoogleGC_ALL")) {
                        if (TextUtils.equals(imsProfile4.getMnoName(), "GoogleGC_ALL")) {
                            ImsProfile imsProfile5 = new ImsProfile(imsProfile4);
                            this.mProfileGlobalGC = imsProfile5;
                            arrayList.add(imsProfile5);
                        }
                    }
                }
            }
        }
        Log.d(this.TAG, "getProfileListByMnoName: " + arrayList);
        return arrayList;
    }

    public List<ImsProfile> getProfileListByMdmnType(String str) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mProfileMap) {
            for (ImsProfile imsProfile : this.mProfileMap.values()) {
                if (TextUtils.equals(imsProfile.getMdmnType(), str)) {
                    arrayList.add(new ImsProfile(imsProfile));
                }
            }
        }
        if (arrayList.isEmpty()) {
            Log.d(this.TAG, "not found from loaded profile by mdmn type");
            for (ImsProfile imsProfile2 : init(false, str)) {
                if (TextUtils.equals(imsProfile2.getMdmnType(), str)) {
                    arrayList.add(new ImsProfile(imsProfile2));
                }
            }
        }
        Log.d(this.TAG, "getProfileListByMdmnType: " + arrayList);
        return arrayList;
    }

    public List<ImsProfile> getAllProfileList() {
        return new ArrayList(getAllProfileFromStorage().values());
    }

    public ImsProfile getProfile(int i) {
        synchronized (this.mProfileMap) {
            if (this.mProfileMap.containsKey(Integer.valueOf(i))) {
                return this.mProfileMap.get(Integer.valueOf(i));
            }
            return getAllProfileFromStorage().get(Integer.valueOf(i));
        }
    }

    public int insert(ImsProfile imsProfile) {
        synchronized (this) {
            int i = this.mNextId;
            this.mNextId = i + 1;
            imsProfile.setId(i);
        }
        synchronized (this.mProfileMap) {
            this.mProfileMap.put(Integer.valueOf(imsProfile.getId()), imsProfile);
        }
        saveToStorage(imsProfile);
        return imsProfile.getId();
    }

    public int update(int i, ContentValues contentValues) {
        ImsProfile profile = getProfile(i);
        if (profile == null) {
            Log.e(this.TAG, "update: profile not found.");
            return 0;
        }
        profile.update(contentValues);
        synchronized (this.mProfileMap) {
            if (this.mProfileMap.containsKey(Integer.valueOf(i))) {
                this.mProfileMap.put(Integer.valueOf(profile.getId()), profile);
            }
        }
        saveToStorage(profile);
        return 1;
    }

    public void remove(int i) {
        synchronized (this.mProfileMap) {
            this.mProfileMap.remove(Integer.valueOf(i));
        }
        removeFromStorage(i);
    }

    private void saveToStorage(ImsProfile imsProfile) {
        ImsSharedPrefHelper.save(this.mPhoneId, this.mContext, ImsSharedPrefHelper.IMS_PROFILE, String.valueOf(imsProfile.getId()), imsProfile.toJson());
    }

    private void removeFromStorage(int i) {
        ImsSharedPrefHelper.remove(this.mPhoneId, this.mContext, ImsSharedPrefHelper.IMS_PROFILE, String.valueOf(i));
    }

    private void clearAllFromStorage() {
        ImsSharedPrefHelper.clear(this.mPhoneId, this.mContext, ImsSharedPrefHelper.IMS_PROFILE);
    }

    private Map<Integer, ImsProfile> getAllProfileFromStorage() {
        synchronized (this.mProfileMap) {
            if (this.mProfileMap.isEmpty()) {
                load(false);
            }
        }
        ArrayMap arrayMap = new ArrayMap();
        for (ImsProfile imsProfile : init(true, null)) {
            arrayMap.put(Integer.valueOf(imsProfile.getId()), imsProfile);
        }
        return arrayMap;
    }

    public void dump() {
        synchronized (this.mProfileMap) {
            IMSLog.dump(this.TAG, "Dump of ImsProfileCache:");
            IMSLog.increaseIndent(this.TAG);
            this.mProfileMap.values().forEach(new Consumer() { // from class: com.sec.internal.ims.settings.ImsProfileCache$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ImsProfileCache.this.lambda$dump$0((ImsProfile) obj);
                }
            });
            IMSLog.decreaseIndent(this.TAG);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dump$0(ImsProfile imsProfile) {
        IMSLog.dump(this.TAG, imsProfile.toString());
    }

    public boolean updateMno(ContentValues contentValues) {
        String str;
        boolean z;
        if (contentValues != null) {
            String asString = contentValues.getAsString("mnoname");
            String asString2 = contentValues.getAsString(ISimManager.KEY_MVNO_NAME);
            if (TextUtils.isEmpty(asString2)) {
                str = "";
                z = false;
            } else {
                z = true;
                asString = asString + ":" + asString2;
                str = asString;
            }
            if (asString != null && !TextUtils.equals(asString, this.mMnoName)) {
                Log.i(this.TAG, "updateMno: Mno Changed from " + this.mMnoName + " to " + asString);
                this.mIsMvno = z;
                this.mPMnoName = str;
                this.mMnoName = asString;
                if (z) {
                    Log.d(this.TAG, "updateMno: This mno is MVNO, Parent Mno is " + this.mPMnoName);
                }
                load(true);
                return true;
            }
        }
        return false;
    }

    public static String readFromJsonFile(Context context, String str, String str2) {
        JsonObject asJsonObject;
        JsonParser jsonParser = new JsonParser();
        InputStreamReader inputStreamReader = new InputStreamReader(context.getResources().openRawResource(R.raw.imsprofile));
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
        JsonReader jsonReader = new JsonReader(bufferedReader);
        JsonElement parse = jsonParser.parse(jsonReader);
        try {
            inputStreamReader.close();
            bufferedReader.close();
            jsonReader.close();
        } catch (IOException unused) {
        }
        try {
            JsonArray asJsonArray = parse.getAsJsonObject().getAsJsonArray("profile");
            if (asJsonArray != null && !asJsonArray.isJsonNull()) {
                Iterator it = asJsonArray.iterator();
                while (it.hasNext()) {
                    try {
                        asJsonObject = ((JsonElement) it.next()).getAsJsonObject();
                    } catch (NullPointerException unused2) {
                    }
                    if (str.equals(asJsonObject.get("name").getAsString())) {
                        return asJsonObject.get(str2).getAsString();
                    }
                }
            }
        } catch (NullPointerException unused3) {
        }
        return "";
    }
}
