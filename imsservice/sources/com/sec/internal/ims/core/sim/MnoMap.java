package com.sec.internal.ims.core.sim;

import android.content.Context;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.ims.core.sim.CscNetParser;
import com.sec.internal.ims.core.sim.MnoMapJsonParser;
import com.sec.internal.ims.settings.ImsAutoUpdate;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class MnoMap {
    public static final String LOG_TAG = "MnoMap";
    private final Context mContext;
    private final CscNetParser mCscNetParser;
    protected SimpleEventLog mEventLog;
    private final MnoMapJsonParser mMnoMapJsonParser;
    private final int mPhoneId;
    private final Map<String, List<NetworkIdentifier>> mTable;

    public MnoMap(Context context, int i) {
        ArrayMap arrayMap = new ArrayMap();
        this.mTable = arrayMap;
        this.mContext = context;
        this.mPhoneId = i;
        this.mCscNetParser = new CscNetParser(i);
        this.mMnoMapJsonParser = new MnoMapJsonParser(context, i);
        this.mEventLog = new SimpleEventLog(context, i, LOG_TAG, 200);
        synchronized (arrayMap) {
            createTable();
        }
    }

    public void createTable() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "createTable: init");
        ImsAutoUpdate.getInstance(this.mContext, this.mPhoneId).loadCarrierFeature();
        List<NetworkIdentifier> parse = this.mMnoMapJsonParser.parse();
        applyAutoUpdates(parse);
        createTableFromMnoMap(parse);
        mergeTableFromCustomerXml();
    }

    private void applyAutoUpdates(List<NetworkIdentifier> list) {
        applyAutoUpdate(list, 2);
        applyAutoUpdate(list, 3);
        applyAutoUpdate(list, 4);
    }

    private void applyAutoUpdate(List<NetworkIdentifier> list, int i) {
        ImsAutoUpdate imsAutoUpdate = ImsAutoUpdate.getInstance(this.mContext, this.mPhoneId);
        if (imsAutoUpdate == null) {
            return;
        }
        applyMnoMapRemove(list, i, imsAutoUpdate);
        applyMnoMapAdd(list, i, imsAutoUpdate);
        applyGcBlockMccList(i, imsAutoUpdate);
    }

    private void applyMnoMapAdd(List<NetworkIdentifier> list, int i, ImsAutoUpdate imsAutoUpdate) {
        JsonElement mnomap = imsAutoUpdate.getMnomap(i, ImsAutoUpdate.TAG_MNOMAP_ADD);
        if (mnomap.isJsonNull() || !mnomap.isJsonArray()) {
            return;
        }
        JsonArray asJsonArray = mnomap.getAsJsonArray();
        if (asJsonArray.isJsonNull() || asJsonArray.size() <= 0) {
            return;
        }
        Iterator it = asJsonArray.iterator();
        while (it.hasNext()) {
            JsonObject asJsonObject = ((JsonElement) it.next()).getAsJsonObject();
            if (asJsonObject.has(MnoMapJsonParser.Param.MCCMNC) && asJsonObject.has(MnoMapJsonParser.Param.SUBSET) && asJsonObject.has(MnoMapJsonParser.Param.GID1) && asJsonObject.has(MnoMapJsonParser.Param.GID2) && asJsonObject.has("mnoname")) {
                String asString = asJsonObject.get(MnoMapJsonParser.Param.MCCMNC).getAsString();
                String asString2 = asJsonObject.get(MnoMapJsonParser.Param.SUBSET).getAsString();
                String upperCase = asJsonObject.get(MnoMapJsonParser.Param.GID1).getAsString().toUpperCase();
                String upperCase2 = asJsonObject.get(MnoMapJsonParser.Param.GID2).getAsString().toUpperCase();
                String asString3 = asJsonObject.get("mnoname").getAsString();
                list.add(new NetworkIdentifier(asString, asString2, upperCase, upperCase2, asJsonObject.has(MnoMapJsonParser.Param.SPNAME) ? asJsonObject.get(MnoMapJsonParser.Param.SPNAME).getAsString() : "", asString3));
                this.mEventLog.logAndAdd("AutoUpdate : add MnoMap : " + asString3 + " by resource : " + i);
            }
        }
    }

    private void applyMnoMapRemove(List<NetworkIdentifier> list, int i, ImsAutoUpdate imsAutoUpdate) {
        JsonElement mnomap = imsAutoUpdate.getMnomap(i, ImsAutoUpdate.TAG_MNOMAP_REMOVE);
        if (mnomap.isJsonNull() || !mnomap.isJsonArray()) {
            return;
        }
        JsonArray asJsonArray = mnomap.getAsJsonArray();
        if (asJsonArray.isJsonNull() || asJsonArray.size() <= 0) {
            return;
        }
        Iterator it = asJsonArray.iterator();
        while (it.hasNext()) {
            JsonObject asJsonObject = ((JsonElement) it.next()).getAsJsonObject();
            if (asJsonObject.has(MnoMapJsonParser.Param.MCCMNC) && asJsonObject.has(MnoMapJsonParser.Param.SUBSET) && asJsonObject.has(MnoMapJsonParser.Param.GID1) && asJsonObject.has(MnoMapJsonParser.Param.GID2) && asJsonObject.has("mnoname")) {
                String asString = asJsonObject.get(MnoMapJsonParser.Param.MCCMNC).getAsString();
                String asString2 = asJsonObject.get(MnoMapJsonParser.Param.SUBSET).getAsString();
                String upperCase = asJsonObject.get(MnoMapJsonParser.Param.GID1).getAsString().toUpperCase();
                String upperCase2 = asJsonObject.get(MnoMapJsonParser.Param.GID2).getAsString().toUpperCase();
                String asString3 = asJsonObject.has(MnoMapJsonParser.Param.SPNAME) ? asJsonObject.get(MnoMapJsonParser.Param.SPNAME).getAsString() : "";
                String asString4 = asJsonObject.get("mnoname").getAsString();
                list.remove(new NetworkIdentifier(asString, asString2, upperCase, upperCase2, asString3, asString4));
                this.mEventLog.logAndAdd("AutoUpdate : remove MnoMap : " + asString4 + " by resource : " + i);
            }
        }
    }

    private void createTableFromMnoMap(List<NetworkIdentifier> list) {
        for (NetworkIdentifier networkIdentifier : list) {
            String mccMnc = networkIdentifier.getMccMnc();
            List<NetworkIdentifier> list2 = this.mTable.get(mccMnc);
            if (list2 == null) {
                list2 = new ArrayList<>();
            }
            list2.add(networkIdentifier);
            this.mTable.put(mccMnc, list2);
        }
    }

    private void mergeTableFromCustomerXml() {
        boolean z;
        Iterator<CscNetParser.CscNetwork> it = this.mCscNetParser.getCscNetworkInfo().iterator();
        while (it.hasNext()) {
            CscNetParser.CscNetwork next = it.next();
            Iterator<NetworkIdentifier> it2 = next.getIdentifiers().iterator();
            boolean z2 = false;
            while (it2.hasNext()) {
                NetworkIdentifier next2 = it2.next();
                List<NetworkIdentifier> list = this.mTable.get(next2.getMccMnc());
                if (list != null) {
                    Iterator<NetworkIdentifier> it3 = list.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            break;
                        }
                        NetworkIdentifier next3 = it3.next();
                        if (next3.equalsWithoutMnoName(next2)) {
                            next.setMnoName(next3.getMnoName());
                            z2 = true;
                            break;
                        }
                    }
                    if (z2) {
                        break;
                    }
                }
            }
            if (z2) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "createTable merge: " + next.getNetworkName());
                Iterator<NetworkIdentifier> it4 = next.getIdentifiers().iterator();
                while (it4.hasNext()) {
                    NetworkIdentifier next4 = it4.next();
                    List<NetworkIdentifier> list2 = this.mTable.get(next4.getMccMnc());
                    if (list2 != null) {
                        Iterator<NetworkIdentifier> it5 = list2.iterator();
                        while (it5.hasNext()) {
                            if (it5.next().contains(next4)) {
                                z = true;
                                break;
                            }
                        }
                    }
                    z = false;
                    if (!z) {
                        IMSLog.i(LOG_TAG, this.mPhoneId, "add new networkd identifier: " + next4.toString());
                        List<NetworkIdentifier> list3 = this.mTable.get(next4.getMccMnc());
                        if (list3 == null) {
                            list3 = new ArrayList<>();
                        }
                        list3.add(next4);
                        this.mTable.put(next4.getMccMnc(), list3);
                    }
                }
            } else {
                IMSLog.i(LOG_TAG, this.mPhoneId, "not found Mno for " + next.getNetworkName());
            }
        }
    }

    private void applyGcBlockMccList(int i, ImsAutoUpdate imsAutoUpdate) {
        List<String> gcBlockList = this.mMnoMapJsonParser.getGcBlockList();
        JsonElement mnomap = imsAutoUpdate.getMnomap(i, ImsAutoUpdate.TAG_REPLACE_GC_BLOCK_MCC_LIST);
        if (mnomap.isJsonNull() || !mnomap.isJsonArray()) {
            return;
        }
        JsonArray asJsonArray = mnomap.getAsJsonArray();
        if (asJsonArray.isJsonNull() || asJsonArray.size() <= 0) {
            return;
        }
        gcBlockList.clear();
        Iterator it = asJsonArray.iterator();
        while (it.hasNext()) {
            gcBlockList.add(((JsonElement) it.next()).getAsString());
        }
    }

    public boolean isGcBlockListContains(String str) {
        if (DeviceUtil.isTablet() || str == null || str.length() < 3 || this.mMnoMapJsonParser.getGcBlockList().contains("*")) {
            return true;
        }
        return this.mMnoMapJsonParser.getGcBlockList().contains(str.substring(0, 3));
    }

    public String changeMnoNameByIccid(String str, String str2, String str3, String str4) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "changeMnoNameByIccid(), simOp:" + str4);
        if ("CTC".equals(str4)) {
            return Mno.CTC.getName();
        }
        if ("CTCMO".equals(str4)) {
            return Mno.CTCMO.getName();
        }
        if ("CTG".equals(str4)) {
            return Mno.CTG.getName();
        }
        if ("APT".equals(str4)) {
            return Mno.APT.getName();
        }
        if (!TextUtils.equals(str, Mno.CORIOLIS.getName())) {
            return str;
        }
        if (TextUtils.equals(str2, "20801") && !TextUtils.isEmpty(str3) && !str3.startsWith("893327")) {
            Log.e(LOG_TAG, "CORIOLIS iccid is not match => Change Mno name to GoogleGC");
            return Mno.GOOGLEGC.getName();
        }
        return Mno.CORIOLIS.getName();
    }

    public String getMnoName(String str, String str2, String str3, String str4, String str5) {
        synchronized (this.mTable) {
            List<NetworkIdentifier> list = this.mTable.get(str);
            String name = (isGcBlockListContains(str) ? Mno.DEFAULT : Mno.GOOGLEGC).getName();
            if (list == null) {
                return name;
            }
            String substring = str2.substring(str.length());
            Iterator<NetworkIdentifier> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                NetworkIdentifier next = it.next();
                if (!TextUtils.isEmpty(next.getSubset())) {
                    int i = 0;
                    while (true) {
                        try {
                            if (next.getSubset().charAt(i) != 'x' && next.getSubset().charAt(i) != 'X') {
                                break;
                            }
                            i++;
                        } catch (StringIndexOutOfBoundsException e) {
                            Log.e(LOG_TAG, "invalid subset - mnomap:" + next.getSubset() + ", SIM:" + substring);
                            e.printStackTrace();
                        }
                    }
                    if (substring.startsWith(next.getSubset().substring(i), i)) {
                        name = next.getMnoName();
                        break;
                    }
                }
                if (!TextUtils.isEmpty(next.getGid1()) && !TextUtils.isEmpty(str3) && str3.toUpperCase().startsWith(next.getGid1().toUpperCase())) {
                    name = next.getMnoName();
                    break;
                }
                if (!TextUtils.isEmpty(next.getGid2()) && !TextUtils.isEmpty(str4) && str4.toUpperCase().startsWith(next.getGid2().toUpperCase())) {
                    name = next.getMnoName();
                    break;
                }
                if (!TextUtils.isEmpty(next.getSpName()) && !TextUtils.isEmpty(str5)) {
                    next.setSpName(next.getSpName().trim());
                    str5 = str5.trim();
                    if (!TextUtils.isEmpty(next.getSpName()) && !TextUtils.isEmpty(str5) && str5.equalsIgnoreCase(next.getSpName())) {
                        name = next.getMnoName();
                        break;
                    }
                }
                if (TextUtils.isEmpty(next.getSubset()) && TextUtils.isEmpty(next.getGid1()) && TextUtils.isEmpty(next.getGid2()) && TextUtils.isEmpty(next.getSpName())) {
                    name = next.getMnoName();
                }
            }
            IMSLog.i(LOG_TAG, this.mPhoneId, "getMnoName: (" + str + "," + str3 + "," + str4 + "," + str5 + ") => " + name);
            return name;
        }
    }

    public Set<String> getMnoNamesFromNetworkPlmn(String str) {
        Set<String> set;
        synchronized (this.mTable) {
            set = (Set) Optional.ofNullable(this.mTable.get(str)).map(new Function() { // from class: com.sec.internal.ims.core.sim.MnoMap$$ExternalSyntheticLambda4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Set lambda$getMnoNamesFromNetworkPlmn$3;
                    lambda$getMnoNamesFromNetworkPlmn$3 = MnoMap.lambda$getMnoNamesFromNetworkPlmn$3((List) obj);
                    return lambda$getMnoNamesFromNetworkPlmn$3;
                }
            }).orElse(Collections.emptySet());
        }
        return set;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Set lambda$getMnoNamesFromNetworkPlmn$3(List list) {
        return (Set) list.stream().map(new Function() { // from class: com.sec.internal.ims.core.sim.MnoMap$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((NetworkIdentifier) obj).getMnoName();
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.core.sim.MnoMap$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getMnoNamesFromNetworkPlmn$0;
                lambda$getMnoNamesFromNetworkPlmn$0 = MnoMap.lambda$getMnoNamesFromNetworkPlmn$0((String) obj);
                return lambda$getMnoNamesFromNetworkPlmn$0;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.core.sim.MnoMap$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getMnoNamesFromNetworkPlmn$1;
                lambda$getMnoNamesFromNetworkPlmn$1 = MnoMap.lambda$getMnoNamesFromNetworkPlmn$1((String) obj);
                return lambda$getMnoNamesFromNetworkPlmn$1;
            }
        }).map(new Function() { // from class: com.sec.internal.ims.core.sim.MnoMap$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$getMnoNamesFromNetworkPlmn$2;
                lambda$getMnoNamesFromNetworkPlmn$2 = MnoMap.lambda$getMnoNamesFromNetworkPlmn$2((String) obj);
                return lambda$getMnoNamesFromNetworkPlmn$2;
            }
        }).collect(Collectors.toSet());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getMnoNamesFromNetworkPlmn$0(String str) {
        return !str.startsWith("DEFAULT");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getMnoNamesFromNetworkPlmn$1(String str) {
        return !str.startsWith("GoogleGC_ALL");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$getMnoNamesFromNetworkPlmn$2(String str) {
        return str.replaceFirst(Mno.GC_BLOCK_EXTENSION, "");
    }

    public void dump() {
        IMSLog.dump(LOG_TAG, this.mPhoneId, "\nDump of MnoMap");
        this.mEventLog.dump();
    }
}
