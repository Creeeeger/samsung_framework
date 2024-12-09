package com.sec.internal.helper;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: classes.dex */
public class ImsSharedPrefHelper {
    public static final String CARRIER_ID = "carrierId";
    public static final String DEBUG_CONFIG = "Debug_config";
    public static final String DRPT = "DRPT";
    public static final String GLOBAL_GC_SETTINGS = "globalgcsettings";
    public static final String IMS_CONFIG = "imsconfig";
    public static final String IMS_SWITCH = "imsswitch";
    public static final String LAST_ACCESSED_COUNTRY_ISO = "last_accessed_country_iso";
    private static final String LOG_TAG = "ImsSharedPrefHelper";
    public static final String PRE_COMMON_HEADER = "previous_common_header";
    public static final String PROFILE = "profile";
    public static final String SAVED_IDC_PROCESS_MODE = "saved_idc_appdata_process_mode";
    public static final String VALID_RCS_CONFIG = "validrcsconfig";
    public static final String IMS_USER_DATA = "ims_user_data";
    public static final String PREF = "pref";
    public static final String SAVED_IMPU = "saved_impu";
    private static final List<String> migrationListForCe = Arrays.asList(IMS_USER_DATA, "profile", PREF, SAVED_IMPU);
    public static final String USER_CONFIG = "user_config";
    public static final String CSC_INFO_PREF = "CSC_INFO_PREF";
    public static final String GLOBAL_SETTINGS = "globalsettings";
    public static final String IMS_FEATURE = "imsfeature";
    public static final String IMS_PROFILE = "imsprofile";
    private static final List<String> saveWithPhoneIdList = Arrays.asList(USER_CONFIG, IMS_USER_DATA, CSC_INFO_PREF, GLOBAL_SETTINGS, IMS_FEATURE, IMS_PROFILE, "imsswitch");

    public static SharedPreferences getSharedPref(int i, Context context, String str, int i2, boolean z) {
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        if ((!z && !DeviceUtil.isUserUnlocked(context)) || !migrationListForCe.contains(str)) {
            if (i < 0) {
                return context.getSharedPreferences(str, i2);
            }
            return context.getSharedPreferences(str + "_" + i, i2);
        }
        IMSLog.d(LOG_TAG, i, "getSharedPref from CE : " + str);
        Context createCredentialProtectedStorageContext = context.createCredentialProtectedStorageContext();
        if (i < 0) {
            return createCredentialProtectedStorageContext.getSharedPreferences(str, i2);
        }
        return createCredentialProtectedStorageContext.getSharedPreferences(str + "_" + i, i2);
    }

    private static Optional<SharedPreferences> getSpAsOptional(int i, Context context, String str) {
        return Optional.ofNullable(getSharedPref(i, context, str, 0, false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$save$0(String str, String str2, SharedPreferences sharedPreferences) {
        sharedPreferences.edit().putString(str, str2).apply();
    }

    public static void save(int i, Context context, String str, final String str2, final String str3) {
        getSpAsOptional(i, context, str).ifPresent(new Consumer() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda9
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ImsSharedPrefHelper.lambda$save$0(str2, str3, (SharedPreferences) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$save$1(String str, boolean z, SharedPreferences sharedPreferences) {
        sharedPreferences.edit().putBoolean(str, z).apply();
    }

    public static void save(int i, Context context, String str, final String str2, final boolean z) {
        getSpAsOptional(i, context, str).ifPresent(new Consumer() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ImsSharedPrefHelper.lambda$save$1(str2, z, (SharedPreferences) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$save$2(String str, int i, SharedPreferences sharedPreferences) {
        sharedPreferences.edit().putInt(str, i).apply();
    }

    public static void save(Context context, String str, final String str2, final int i) {
        getSpAsOptional(-1, context, str).ifPresent(new Consumer() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda5
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ImsSharedPrefHelper.lambda$save$2(str2, i, (SharedPreferences) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$save$3(String str, int i, SharedPreferences sharedPreferences) {
        sharedPreferences.edit().putInt(str, i).apply();
    }

    public static void save(int i, Context context, String str, final String str2, final int i2) {
        getSpAsOptional(i, context, str).ifPresent(new Consumer() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda12
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ImsSharedPrefHelper.lambda$save$3(str2, i2, (SharedPreferences) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$save$4(String str, long j, SharedPreferences sharedPreferences) {
        sharedPreferences.edit().putLong(str, j).apply();
    }

    public static void save(int i, Context context, String str, final String str2, final long j) {
        getSpAsOptional(i, context, str).ifPresent(new Consumer() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda7
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ImsSharedPrefHelper.lambda$save$4(str2, j, (SharedPreferences) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$save$5(String str, Set set, SharedPreferences sharedPreferences) {
        sharedPreferences.edit().putStringSet(str, set).apply();
    }

    public static void save(int i, Context context, String str, final String str2, final Set<String> set) {
        getSpAsOptional(i, context, str).ifPresent(new Consumer() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda15
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ImsSharedPrefHelper.lambda$save$5(str2, set, (SharedPreferences) obj);
            }
        });
    }

    public static String getString(int i, Context context, String str, final String str2, final String str3) {
        try {
            return (String) getSpAsOptional(i, context, str).map(new Function() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda10
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String lambda$getString$6;
                    lambda$getString$6 = ImsSharedPrefHelper.lambda$getString$6(str2, str3, (SharedPreferences) obj);
                    return lambda$getString$6;
                }
            }).orElse(str3);
        } catch (ClassCastException e) {
            if (str3.matches("-?\\d+")) {
                final int parseInt = Integer.parseInt(str3);
                String valueOf = String.valueOf(getSpAsOptional(i, context, str).map(new Function() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda11
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Integer lambda$getString$7;
                        lambda$getString$7 = ImsSharedPrefHelper.lambda$getString$7(str2, parseInt, (SharedPreferences) obj);
                        return lambda$getString$7;
                    }
                }).orElse(Integer.valueOf(parseInt)));
                IMSLog.i(LOG_TAG, i, "getString: ClassCastException but okay with getInt() for " + str2);
                return valueOf;
            }
            e.printStackTrace();
            return str3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$getString$6(String str, String str2, SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$getString$7(String str, int i, SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(str, i));
    }

    public static Set<String> getStringSet(int i, Context context, String str, final String str2, final Set<String> set) {
        return (Set) getSpAsOptional(i, context, str).map(new Function() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda8
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Set lambda$getStringSet$8;
                lambda$getStringSet$8 = ImsSharedPrefHelper.lambda$getStringSet$8(str2, set, (SharedPreferences) obj);
                return lambda$getStringSet$8;
            }
        }).orElse(set);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Set lambda$getStringSet$8(String str, Set set, SharedPreferences sharedPreferences) {
        return sharedPreferences.getStringSet(str, set);
    }

    public static boolean getBoolean(int i, Context context, String str, final String str2, final boolean z) {
        return ((Boolean) getSpAsOptional(i, context, str).map(new Function() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda14
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$getBoolean$9;
                lambda$getBoolean$9 = ImsSharedPrefHelper.lambda$getBoolean$9(str2, z, (SharedPreferences) obj);
                return lambda$getBoolean$9;
            }
        }).orElse(Boolean.valueOf(z))).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$getBoolean$9(String str, boolean z, SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(str, z));
    }

    public static int getInt(Context context, String str, final String str2, final int i) {
        return ((Integer) getSpAsOptional(-1, context, str).map(new Function() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda13
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Integer lambda$getInt$10;
                lambda$getInt$10 = ImsSharedPrefHelper.lambda$getInt$10(str2, i, (SharedPreferences) obj);
                return lambda$getInt$10;
            }
        }).orElse(Integer.valueOf(i))).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$getInt$10(String str, int i, SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(str, i));
    }

    public static int getInt(int i, Context context, String str, final String str2, final int i2) {
        return ((Integer) getSpAsOptional(i, context, str).map(new Function() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda6
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Integer lambda$getInt$11;
                lambda$getInt$11 = ImsSharedPrefHelper.lambda$getInt$11(str2, i2, (SharedPreferences) obj);
                return lambda$getInt$11;
            }
        }).orElse(Integer.valueOf(i2))).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$getInt$11(String str, int i, SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(str, i));
    }

    public static long getLong(int i, Context context, String str, final String str2, final long j) {
        return ((Long) getSpAsOptional(i, context, str).map(new Function() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Long lambda$getLong$12;
                lambda$getLong$12 = ImsSharedPrefHelper.lambda$getLong$12(str2, j, (SharedPreferences) obj);
                return lambda$getLong$12;
            }
        }).orElse(Long.valueOf(j))).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$getLong$12(String str, long j, SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(str, j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$remove$13(String str, SharedPreferences sharedPreferences) {
        sharedPreferences.edit().remove(str).apply();
    }

    public static void remove(int i, Context context, String str, final String str2) {
        getSpAsOptional(i, context, str).ifPresent(new Consumer() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda16
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ImsSharedPrefHelper.lambda$remove$13(str2, (SharedPreferences) obj);
            }
        });
    }

    public static void clear(int i, Context context, String str) {
        getSpAsOptional(i, context, str).ifPresent(new Consumer() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ImsSharedPrefHelper.lambda$clear$14((SharedPreferences) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$clear$14(SharedPreferences sharedPreferences) {
        sharedPreferences.edit().clear().apply();
    }

    public static Map<String, String> getStringArray(int i, Context context, String str, final String[] strArr) {
        final ArrayMap arrayMap = new ArrayMap(strArr.length);
        getSpAsOptional(i, context, str).ifPresent(new Consumer() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ImsSharedPrefHelper.lambda$getStringArray$15(strArr, arrayMap, (SharedPreferences) obj);
            }
        });
        return arrayMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getStringArray$15(String[] strArr, Map map, SharedPreferences sharedPreferences) {
        for (String str : strArr) {
            map.put(str, sharedPreferences.getString(str, ""));
        }
    }

    public static void put(int i, Context context, String str, final ContentValues contentValues) {
        getSpAsOptional(i, context, str).ifPresent(new Consumer() { // from class: com.sec.internal.helper.ImsSharedPrefHelper$$ExternalSyntheticLambda4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ImsSharedPrefHelper.lambda$put$16(contentValues, (SharedPreferences) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$put$16(ContentValues contentValues, SharedPreferences sharedPreferences) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        for (String str : contentValues.keySet()) {
            edit.putString(str, contentValues.getAsString(str));
        }
        edit.apply();
    }

    public static void migrateToCeStorage(Context context) {
        String str = LOG_TAG;
        IMSLog.d(str, "migrate shared preferences to CE storage");
        if (context == null) {
            IMSLog.d(str, "context is null ");
            return;
        }
        int phoneCount = ((TelephonyManager) context.getSystemService(PhoneConstants.PHONE_KEY)).getPhoneCount();
        Context createCredentialProtectedStorageContext = context.createCredentialProtectedStorageContext();
        for (String str2 : migrationListForCe) {
            if (saveWithPhoneIdList.contains(str2)) {
                for (int i = 0; i < phoneCount; i++) {
                    if (!createCredentialProtectedStorageContext.moveSharedPreferencesFrom(context, str2 + "_" + i)) {
                        IMSLog.e(LOG_TAG, "Failed to move shared preferences.");
                        return;
                    }
                    if (!context.deleteSharedPreferences(str2 + "_" + i)) {
                        IMSLog.e(LOG_TAG, "Failed delete shared preferences on DE.");
                        return;
                    }
                }
            } else if (!createCredentialProtectedStorageContext.moveSharedPreferencesFrom(context, str2)) {
                IMSLog.e(LOG_TAG, "Failed to move shared preferences.");
                return;
            } else if (!context.deleteSharedPreferences(str2)) {
                IMSLog.e(LOG_TAG, "Failed delete shared preferences on DE.");
                return;
            }
        }
    }
}
