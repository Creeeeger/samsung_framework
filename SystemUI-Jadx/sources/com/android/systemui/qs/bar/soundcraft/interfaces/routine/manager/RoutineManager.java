package com.android.systemui.qs.bar.soundcraft.interfaces.routine.manager;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.systemui.qs.bar.soundcraft.interfaces.routine.extension.ActionParamCreator;
import com.android.systemui.qs.bar.soundcraft.interfaces.routine.extension.ActionType;
import com.android.systemui.qs.bar.soundcraft.interfaces.routine.extension.ConditionParamCreator;
import com.android.systemui.qs.bar.soundcraft.model.BudsInfo;
import com.android.systemui.qs.bar.soundcraft.model.Equalizer;
import com.samsung.android.knox.net.vpn.KnoxVpnPolicyConstants;
import com.samsung.android.sdk.routines.automationservice.AutomationServiceProvider;
import com.samsung.android.sdk.routines.automationservice.data.MetaInfo;
import com.samsung.android.sdk.routines.automationservice.data.ParameterValues;
import com.samsung.android.sdk.routines.automationservice.interfaces.AutomationService;
import com.samsung.android.sdk.routines.automationservice.internal.AutomationServiceImpl;
import com.samsung.android.sdk.routines.automationservice.internal.ContentHandlerImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RoutineManager {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Context context;
    public final Lazy service$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.qs.bar.soundcraft.interfaces.routine.manager.RoutineManager$service$2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            AutomationServiceProvider.INSTANCE.getClass();
            return new AutomationServiceImpl(new ContentHandlerImpl());
        }
    });

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public RoutineManager(Context context) {
        this.context = context;
    }

    public static final HashMap access$buildActions(RoutineManager routineManager, BudsInfo budsInfo) {
        routineManager.getClass();
        HashMap hashMap = new HashMap();
        Boolean spatialAudio = budsInfo.getSpatialAudio();
        if (spatialAudio != null) {
            boolean booleanValue = spatialAudio.booleanValue();
            ActionParamCreator actionParamCreator = ActionParamCreator.INSTANCE;
            ActionType actionType = ActionType.SPATIAL_AUDIO;
            String valueOf = String.valueOf(booleanValue);
            actionParamCreator.getClass();
            ActionParamCreator.putActionValue(hashMap, actionType, valueOf);
        }
        Boolean headTracking = budsInfo.getHeadTracking();
        if (headTracking != null) {
            boolean booleanValue2 = headTracking.booleanValue();
            ActionParamCreator actionParamCreator2 = ActionParamCreator.INSTANCE;
            ActionType actionType2 = ActionType.HEAD_TRACKING;
            String valueOf2 = String.valueOf(booleanValue2);
            actionParamCreator2.getClass();
            ActionParamCreator.putActionValue(hashMap, actionType2, valueOf2);
        }
        List<Equalizer> equalizerList = budsInfo.getEqualizerList();
        if (equalizerList != null) {
            for (Equalizer equalizer : equalizerList) {
                if (equalizer.getState()) {
                    ActionParamCreator actionParamCreator3 = ActionParamCreator.INSTANCE;
                    ActionType actionType3 = ActionType.EQUALIZER;
                    List equalizerList2 = budsInfo.getEqualizerList();
                    Intrinsics.checkNotNull(equalizerList2);
                    String valueOf3 = String.valueOf(equalizerList2.indexOf(equalizer));
                    actionParamCreator3.getClass();
                    ActionParamCreator.putActionValue(hashMap, actionType3, valueOf3);
                }
            }
            throw new NoSuchElementException("Collection contains no element matching the predicate.");
        }
        Boolean voiceBoost = budsInfo.getVoiceBoost();
        if (voiceBoost != null) {
            boolean booleanValue3 = voiceBoost.booleanValue();
            ActionParamCreator actionParamCreator4 = ActionParamCreator.INSTANCE;
            ActionType actionType4 = ActionType.VOICE_BOOST;
            String valueOf4 = String.valueOf(booleanValue3);
            actionParamCreator4.getClass();
            ActionParamCreator.putActionValue(hashMap, actionType4, valueOf4);
        }
        Boolean volumeNormalization = budsInfo.getVolumeNormalization();
        if (volumeNormalization != null) {
            boolean booleanValue4 = volumeNormalization.booleanValue();
            ActionParamCreator actionParamCreator5 = ActionParamCreator.INSTANCE;
            ActionType actionType5 = ActionType.VOLUME_NORMALIZATION;
            String valueOf5 = String.valueOf(booleanValue4);
            actionParamCreator5.getClass();
            ActionParamCreator.putActionValue(hashMap, actionType5, valueOf5);
        }
        return hashMap;
    }

    public static final HashMap access$buildConditions(RoutineManager routineManager, String str) {
        routineManager.getClass();
        HashMap hashMap = new HashMap();
        ConditionParamCreator conditionParamCreator = ConditionParamCreator.INSTANCE;
        String valueOf = String.valueOf(routineManager.context.getPackageManager().getPackageUid(str, 1));
        conditionParamCreator.getClass();
        MetaInfo.Companion.getClass();
        MetaInfo metaInfo = new MetaInfo(KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG, "playing_audio", null);
        ParameterValues.Companion.getClass();
        ParameterValues parameterValues = new ParameterValues();
        parameterValues.put("playing_audio_app_uid", valueOf);
        parameterValues.put("playing_audio_app_package_name", str);
        Unit unit = Unit.INSTANCE;
        hashMap.put(metaInfo, parameterValues);
        return hashMap;
    }

    public final void createRoutine(final String str, final BudsInfo budsInfo) {
        Function0 function0 = new Function0() { // from class: com.android.systemui.qs.bar.soundcraft.interfaces.routine.manager.RoutineManager$createRoutine$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                RoutineManager routineManager = RoutineManager.this;
                String str2 = str;
                HashMap access$buildConditions = RoutineManager.access$buildConditions(routineManager, str2);
                HashMap access$buildActions = RoutineManager.access$buildActions(RoutineManager.this, budsInfo);
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("createRoutine : packageName=", str2, "SoundCraft.RoutineManager");
                AutomationService automationService = (AutomationService) routineManager.service$delegate.getValue();
                AutomationService.SystemRoutineType systemRoutineType = AutomationService.SystemRoutineType.SOUND_CRAFT;
                String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str2, " Preset");
                AutomationServiceImpl automationServiceImpl = (AutomationServiceImpl) automationService;
                automationServiceImpl.getClass();
                if (AutomationServiceImpl.Companion.access$isValidRequest(AutomationServiceImpl.Companion, systemRoutineType)) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("condition_size", access$buildConditions.size());
                    bundle.putInt("action_size", access$buildActions.size());
                    Set keySet = access$buildConditions.keySet();
                    ArrayList<String> arrayList = new ArrayList<>(CollectionsKt__IterablesKt.collectionSizeOrDefault(keySet, 10));
                    Iterator it = keySet.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((MetaInfo) it.next()).toString());
                    }
                    bundle.putStringArrayList("condition_keys", arrayList);
                    Set keySet2 = access$buildActions.keySet();
                    ArrayList<String> arrayList2 = new ArrayList<>(CollectionsKt__IterablesKt.collectionSizeOrDefault(keySet2, 10));
                    Iterator it2 = keySet2.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(((MetaInfo) it2.next()).toString());
                    }
                    bundle.putStringArrayList("action_keys", arrayList2);
                    bundle.putString("name", m);
                    bundle.putString("type", systemRoutineType.getValue());
                    ContentValues contentValues = new ContentValues();
                    for (MetaInfo metaInfo : access$buildConditions.keySet()) {
                        contentValues.put(metaInfo.toString(), AutomationServiceImpl.createContentValue((ParameterValues) access$buildConditions.get(metaInfo)));
                    }
                    for (MetaInfo metaInfo2 : access$buildActions.keySet()) {
                        contentValues.put(metaInfo2.toString(), AutomationServiceImpl.createContentValue((ParameterValues) access$buildActions.get(metaInfo2)));
                    }
                    ((ContentHandlerImpl) automationServiceImpl.contentHandler).getClass();
                    Uri insert = routineManager.context.getContentResolver().insert(Uri.parse("content://com.samsung.android.app.routines.routineinfoprovider/core_service"), contentValues, bundle);
                    if (insert != null) {
                        insert.getLastPathSegment();
                    }
                }
                return Unit.INSTANCE;
            }
        };
        RoutineUpdateThread.INSTANCE.getClass();
        ((Handler) RoutineUpdateThread.handler$delegate.getValue()).post(new RoutineUpdateThread$sam$java_lang_Runnable$0(function0));
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0085, code lost:
    
        if (r12.moveToFirst() != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0087, code lost:
    
        r0 = r12.getColumnIndex("uuid");
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008f, code lost:
    
        if (r0 == (-1)) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0091, code lost:
    
        r2.add(r12.getString(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009c, code lost:
    
        if (r12.moveToNext() != false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String getRoutineId(java.lang.String r13) {
        /*
            r12 = this;
            kotlin.Lazy r0 = r12.service$delegate
            java.lang.Object r0 = r0.getValue()
            com.samsung.android.sdk.routines.automationservice.interfaces.AutomationService r0 = (com.samsung.android.sdk.routines.automationservice.interfaces.AutomationService) r0
            android.content.Context r12 = r12.context
            com.samsung.android.sdk.routines.automationservice.interfaces.AutomationService$SystemRoutineType r1 = com.samsung.android.sdk.routines.automationservice.interfaces.AutomationService.SystemRoutineType.SOUND_CRAFT
            com.samsung.android.sdk.routines.automationservice.internal.AutomationServiceImpl r0 = (com.samsung.android.sdk.routines.automationservice.internal.AutomationServiceImpl) r0
            r0.getClass()
            com.samsung.android.sdk.routines.automationservice.internal.Log r2 = com.samsung.android.sdk.routines.automationservice.internal.Log.INSTANCE
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "findRoutineIdsByMonitoredPackage: "
            r3.<init>(r4)
            r3.append(r13)
            java.lang.String r4 = ", type:"
            r3.append(r4)
            r3.append(r1)
            java.lang.String r3 = r3.toString()
            r2.getClass()
            java.lang.String r2 = "Routine@AutomationService[1.0.1]: "
            java.lang.String r4 = "AutomationServiceImpl@SDK"
            java.lang.String r2 = r2.concat(r4)
            android.util.Log.i(r2, r3)
            com.samsung.android.sdk.routines.automationservice.internal.AutomationServiceImpl$Companion r2 = com.samsung.android.sdk.routines.automationservice.internal.AutomationServiceImpl.Companion
            boolean r2 = com.samsung.android.sdk.routines.automationservice.internal.AutomationServiceImpl.Companion.access$isValidRequest(r2, r1)
            if (r2 != 0) goto L43
            kotlin.collections.EmptyList r12 = kotlin.collections.EmptyList.INSTANCE
            goto Lc8
        L43:
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            com.samsung.android.sdk.routines.automationservice.interfaces.ContentHandler r0 = r0.contentHandler     // Catch: java.lang.Exception -> Lac
            java.lang.String r1 = r1.getValue()     // Catch: java.lang.Exception -> Lac
            com.samsung.android.sdk.routines.automationservice.internal.ContentHandlerImpl r0 = (com.samsung.android.sdk.routines.automationservice.internal.ContentHandlerImpl) r0     // Catch: java.lang.Exception -> Lac
            r0.getClass()     // Catch: java.lang.Exception -> Lac
            android.content.ContentResolver r5 = r12.getContentResolver()     // Catch: java.lang.Exception -> Lac
            java.lang.String r12 = "content://com.samsung.android.app.routines.routineinfoprovider/core_service/monitor/"
            java.lang.String r12 = r12.concat(r13)     // Catch: java.lang.Exception -> Lac
            android.net.Uri r12 = android.net.Uri.parse(r12)     // Catch: java.lang.Exception -> Lac
            android.net.Uri$Builder r12 = r12.buildUpon()     // Catch: java.lang.Exception -> Lac
            java.lang.String r0 = "type"
            android.net.Uri$Builder r12 = r12.appendQueryParameter(r0, r1)     // Catch: java.lang.Exception -> Lac
            android.net.Uri r6 = r12.build()     // Catch: java.lang.Exception -> Lac
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            android.database.Cursor r12 = r5.query(r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Exception -> Lac
            if (r12 == 0) goto Lc7
            int r0 = r12.getCount()     // Catch: java.lang.Throwable -> La5
            if (r0 <= 0) goto L9e
            boolean r0 = r12.moveToFirst()     // Catch: java.lang.Throwable -> La5
            if (r0 == 0) goto L9e
        L87:
            java.lang.String r0 = "uuid"
            int r0 = r12.getColumnIndex(r0)     // Catch: java.lang.Throwable -> La5
            r1 = -1
            if (r0 == r1) goto L98
            java.lang.String r0 = r12.getString(r0)     // Catch: java.lang.Throwable -> La5
            r2.add(r0)     // Catch: java.lang.Throwable -> La5
        L98:
            boolean r0 = r12.moveToNext()     // Catch: java.lang.Throwable -> La5
            if (r0 != 0) goto L87
        L9e:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> La5
            r0 = 0
            kotlin.io.CloseableKt.closeFinally(r12, r0)     // Catch: java.lang.Exception -> Lac
            goto Lc7
        La5:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> La7
        La7:
            r1 = move-exception
            kotlin.io.CloseableKt.closeFinally(r12, r0)     // Catch: java.lang.Exception -> Lac
            throw r1     // Catch: java.lang.Exception -> Lac
        Lac:
            r12 = move-exception
            com.samsung.android.sdk.routines.automationservice.internal.Log r0 = com.samsung.android.sdk.routines.automationservice.internal.Log.INSTANCE
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "getRoutineUuidByMonitoredPackageAsConditionParam: "
            r1.<init>(r3)
            java.lang.String r12 = r12.getMessage()
            r1.append(r12)
            java.lang.String r12 = r1.toString()
            r0.getClass()
            com.samsung.android.sdk.routines.automationservice.internal.Log.e(r4, r12)
        Lc7:
            r12 = r2
        Lc8:
            java.lang.Object r12 = kotlin.collections.CollectionsKt___CollectionsKt.firstOrNull(r12)
            java.lang.String r12 = (java.lang.String) r12
            java.lang.String r0 = "getRoutineId : packageName="
            java.lang.String r1 = ", return id="
            java.lang.String r2 = " (sdk=1.0.1)"
            java.lang.String r13 = androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0.m(r0, r13, r1, r12, r2)
            java.lang.String r0 = "SoundCraft.RoutineManager"
            android.util.Log.d(r0, r13)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.bar.soundcraft.interfaces.routine.manager.RoutineManager.getRoutineId(java.lang.String):java.lang.String");
    }

    public final void updateRoutine(final String str, final String str2, final BudsInfo budsInfo) {
        Function0 function0 = new Function0() { // from class: com.android.systemui.qs.bar.soundcraft.interfaces.routine.manager.RoutineManager$updateRoutine$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int update;
                Log.d("SoundCraft.RoutineManager", "updateBudsInfo : routineId=" + str2 + ", budsInfo=" + budsInfo);
                RoutineManager routineManager = this;
                int i = RoutineManager.$r8$clinit;
                AutomationService automationService = (AutomationService) routineManager.service$delegate.getValue();
                RoutineManager routineManager2 = this;
                Context context = routineManager2.context;
                AutomationService.SystemRoutineType systemRoutineType = AutomationService.SystemRoutineType.SOUND_CRAFT;
                String str3 = str2;
                HashMap access$buildConditions = RoutineManager.access$buildConditions(routineManager2, str);
                HashMap access$buildActions = RoutineManager.access$buildActions(this, budsInfo);
                AutomationServiceImpl automationServiceImpl = (AutomationServiceImpl) automationService;
                automationServiceImpl.getClass();
                com.samsung.android.sdk.routines.automationservice.internal.Log log = com.samsung.android.sdk.routines.automationservice.internal.Log.INSTANCE;
                StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m("updateRoutineByRoutineId: routineId:", str3, ", conditions:");
                m.append(access$buildConditions.keySet());
                m.append(", actions:");
                m.append(access$buildActions.keySet());
                String sb = m.toString();
                log.getClass();
                Log.i("Routine@AutomationService[1.0.1]: ".concat("AutomationServiceImpl@SDK"), sb);
                if (!AutomationServiceImpl.Companion.access$isValidRequest(AutomationServiceImpl.Companion, systemRoutineType)) {
                    update = -1;
                } else {
                    ContentValues contentValues = new ContentValues();
                    for (MetaInfo metaInfo : access$buildConditions.keySet()) {
                        contentValues.put(metaInfo.toString(), AutomationServiceImpl.createContentValue((ParameterValues) access$buildConditions.get(metaInfo)));
                    }
                    ((ContentHandlerImpl) automationServiceImpl.contentHandler).getClass();
                    int update2 = context.getContentResolver().update(Uri.parse("content://com.samsung.android.app.routines.routineinfoprovider/core_service/condition_status/".concat(str3)), contentValues, null, null);
                    ContentValues contentValues2 = new ContentValues();
                    for (MetaInfo metaInfo2 : access$buildActions.keySet()) {
                        contentValues2.put(metaInfo2.toString(), AutomationServiceImpl.createContentValue((ParameterValues) access$buildActions.get(metaInfo2)));
                    }
                    update = update2 + context.getContentResolver().update(Uri.parse("content://com.samsung.android.app.routines.routineinfoprovider/core_service/action_status/".concat(str3)), contentValues2, null, null);
                }
                Log.d("SoundCraft.RoutineManager", "updateBudsInfo : routineId=" + str2 + " update result=" + update);
                return Unit.INSTANCE;
            }
        };
        RoutineUpdateThread.INSTANCE.getClass();
        ((Handler) RoutineUpdateThread.handler$delegate.getValue()).post(new RoutineUpdateThread$sam$java_lang_Runnable$0(function0));
    }
}
