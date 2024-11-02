package com.android.systemui.qs.bar.soundcraft.viewmodel;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.util.Log;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.lifecycle.MutableLiveData;
import com.android.keyguard.EmergencyButtonController$$ExternalSyntheticOutline0;
import com.android.systemui.qs.bar.soundcraft.feature.SoundCraftDebugFeatures;
import com.android.systemui.qs.bar.soundcraft.interfaces.audio.AudioPlaybackManager;
import com.android.systemui.qs.bar.soundcraft.interfaces.connectivity.BluetoothDeviceManager;
import com.android.systemui.qs.bar.soundcraft.interfaces.routine.manager.RoutineManager;
import com.android.systemui.qs.bar.soundcraft.interfaces.settings.SoundCraftSettings;
import com.android.systemui.qs.bar.soundcraft.interfaces.wearable.WearableManager;
import com.android.systemui.qs.bar.soundcraft.interfaces.wearable.requester.GetDummyInfoRequester;
import com.android.systemui.qs.bar.soundcraft.interfaces.wearable.requester.GetInfoRequester;
import com.android.systemui.qs.bar.soundcraft.model.BudsInfo;
import com.android.systemui.qs.bar.soundcraft.model.Equalizer;
import com.android.systemui.qs.bar.soundcraft.model.ModelProvider;
import com.android.systemui.qs.bar.soundcraft.model.NoiseControl;
import com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SoundCraftViewModel extends BaseViewModel {
    public final AudioPlaybackManager audioPlaybackManager;
    public final BluetoothDeviceManager bluetoothDeviceManager;
    public final ModelProvider modelProvider;
    public final RoutineManager routineManager;
    public final WearableManager wearableManager;
    public final MutableLiveData showNoiseControlBox = new MutableLiveData();
    public final MutableLiveData showAudioEffectBox = new MutableLiveData();
    public final MutableLiveData showLoadingView = new MutableLiveData();
    public final MutableLiveData showDownloadGuideView = new MutableLiveData();

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

    public SoundCraftViewModel(Context context, WearableManager wearableManager, RoutineManager routineManager, BluetoothDeviceManager bluetoothDeviceManager, ModelProvider modelProvider, AudioPlaybackManager audioPlaybackManager) {
        this.wearableManager = wearableManager;
        this.routineManager = routineManager;
        this.bluetoothDeviceManager = bluetoothDeviceManager;
        this.modelProvider = modelProvider;
        this.audioPlaybackManager = audioPlaybackManager;
        ListPopupWindow$$ExternalSyntheticOutline0.m("init : hashCode=", hashCode(), "SoundCraft.SoundCraftViewModel");
    }

    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel
    public final void notifyChange() {
        boolean z;
        ModelProvider modelProvider = this.modelProvider;
        Log.d("SoundCraft.SoundCraftViewModel", "notifyChange : budsInfo=" + modelProvider.budsInfo);
        this.showNoiseControlBox.setValue(Boolean.TRUE);
        MutableLiveData mutableLiveData = this.showAudioEffectBox;
        BudsInfo budsInfo = modelProvider.budsInfo;
        boolean z2 = false;
        if (budsInfo.getEqualizerList() == null && budsInfo.getSpatialAudio() == null && budsInfo.getVoiceBoost() == null && budsInfo.getVolumeNormalization() == null) {
            z = false;
        } else {
            z = true;
        }
        mutableLiveData.setValue(Boolean.valueOf(z));
        MutableLiveData mutableLiveData2 = this.showLoadingView;
        if (modelProvider.budsInfo.getConnectionState() == null) {
            z2 = true;
        }
        mutableLiveData2.setValue(Boolean.valueOf(z2));
    }

    public final void onCreateView() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        Set linkedHashSet;
        Set linkedHashSet2;
        ModelProvider modelProvider = this.modelProvider;
        SoundCraftSettings soundCraftSettings = modelProvider.settings;
        Context context = soundCraftSettings.context;
        if (Settings.System.getInt(context.getContentResolver(), "audio_soundcraft_app_setting", 0) == 1) {
            z = true;
        } else {
            z = false;
        }
        soundCraftSettings.isAppSettingEnabled = z;
        soundCraftSettings.budsPluginPackageName = Settings.System.getString(context.getContentResolver(), "buds_plugin_package_name");
        final Function0 function0 = new Function0() { // from class: com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel$onCreateView$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SoundCraftViewModel.this.notifyChange();
                return Unit.INSTANCE;
            }
        };
        WearableManager wearableManager = this.wearableManager;
        wearableManager.getClass();
        SoundCraftDebugFeatures.INSTANCE.getClass();
        Context context2 = wearableManager.context;
        if (Settings.System.getInt(context2.getContentResolver(), "audio_soundcraft_debug_dummy_buds_info", 0) == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        SoundCraftSettings soundCraftSettings2 = wearableManager.soundCraftSettings;
        if (z2) {
            Log.d("SoundCraft.wearable.WearableManager", "isSupport : useDummyBudsInfo is true.");
            z4 = true;
        } else {
            String str = soundCraftSettings2.budsPluginPackageName;
            if (str.length() == 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3) {
                Log.d("SoundCraft.wearable.WearableManager", "isSupport : packageName is empty. The device is not supported.");
                z4 = false;
            } else {
                PackageManager packageManager = context2.getPackageManager();
                Intent intent = new Intent("com.samsung.accessory.hearablemgr.BUDS_CONTROLLER");
                intent.setPackage(str);
                z4 = !packageManager.queryIntentServices(intent, 0).isEmpty();
                Log.d("SoundCraft.wearable.WearableManager", "isSupport : packageName=" + str + ", isServiceExist=" + z4);
            }
        }
        EmergencyButtonController$$ExternalSyntheticOutline0.m("onCreateView : isBudsPluginSupport=", z4, ", isAppSettingEnabled=", modelProvider.settings.isAppSettingEnabled, "SoundCraft.SoundCraftViewModel");
        if (!z4) {
            function0.invoke();
        } else {
            Function1 function1 = new Function1() { // from class: com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel$getBudsInfo$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Code restructure failed: missing block: B:35:0x03fa, code lost:
                
                    if (r3 == null) goto L187;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:59:0x0494, code lost:
                
                    if (r1 == null) goto L211;
                 */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:16:0x0344  */
                /* JADX WARN: Removed duplicated region for block: B:174:0x032f  */
                /* JADX WARN: Removed duplicated region for block: B:176:0x0332  */
                /* JADX WARN: Removed duplicated region for block: B:24:0x0393  */
                /* JADX WARN: Removed duplicated region for block: B:68:0x0515  */
                /* JADX WARN: Removed duplicated region for block: B:72:0x04ff  */
                /* JADX WARN: Removed duplicated region for block: B:73:0x036b  */
                /* JADX WARN: Removed duplicated region for block: B:84:0x01a8  */
                /* JADX WARN: Removed duplicated region for block: B:99:0x02fa  */
                /* JADX WARN: Type inference failed for: r10v10 */
                /* JADX WARN: Type inference failed for: r10v11 */
                /* JADX WARN: Type inference failed for: r10v12 */
                /* JADX WARN: Type inference failed for: r10v13 */
                /* JADX WARN: Type inference failed for: r10v14 */
                /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.String] */
                /* JADX WARN: Type inference failed for: r10v4 */
                /* JADX WARN: Type inference failed for: r10v5 */
                /* JADX WARN: Type inference failed for: r10v7 */
                /* JADX WARN: Type inference failed for: r10v8 */
                /* JADX WARN: Type inference failed for: r10v9 */
                /* JADX WARN: Type inference failed for: r15v1, types: [android.content.ContentResolver] */
                /* JADX WARN: Type inference failed for: r16v10 */
                /* JADX WARN: Type inference failed for: r16v11 */
                /* JADX WARN: Type inference failed for: r16v12 */
                /* JADX WARN: Type inference failed for: r16v16 */
                /* JADX WARN: Type inference failed for: r16v2 */
                /* JADX WARN: Type inference failed for: r16v3 */
                /* JADX WARN: Type inference failed for: r16v6, types: [android.net.Uri] */
                /* JADX WARN: Type inference failed for: r16v7 */
                /* JADX WARN: Type inference failed for: r16v8 */
                /* JADX WARN: Type inference failed for: r16v9 */
                /* JADX WARN: Type inference failed for: r8v6 */
                /* JADX WARN: Type inference failed for: r8v7, types: [java.lang.String] */
                /* JADX WARN: Type inference failed for: r8v8 */
                /* JADX WARN: Type inference failed for: r8v9, types: [java.lang.String] */
                @Override // kotlin.jvm.functions.Function1
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object invoke(java.lang.Object r34) {
                    /*
                        Method dump skipped, instructions count: 1321
                        To view this dump change 'Code comments level' option to 'DEBUG'
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel$getBudsInfo$1.invoke(java.lang.Object):java.lang.Object");
                }
            };
            Log.d("SoundCraft.wearable.WearableManager", "getBudsInfo");
            if (Settings.System.getInt(context2.getContentResolver(), "audio_soundcraft_debug_dummy_buds_info", 0) == 1) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (z5) {
                new GetDummyInfoRequester();
                List listOf = CollectionsKt__CollectionsKt.listOf(new Equalizer("Balanced", true), new Equalizer("Bass boost", false), new Equalizer("Smooth", false), new Equalizer("Dynamic", false), new Equalizer("Clear", false), new Equalizer("Treble boost", false), new Equalizer("Custom", false));
                Boolean bool = Boolean.TRUE;
                Boolean bool2 = Boolean.FALSE;
                function1.invoke(new BudsInfo(null, listOf, null, null, null, null, null, null, bool, bool2, bool, bool2, IKnoxCustomManager.Stub.TRANSACTION_getDexForegroundModePackageList, null));
            } else {
                new GetInfoRequester(context2, soundCraftSettings2.budsPluginPackageName, function1).bindService();
            }
        }
        BluetoothDeviceManager bluetoothDeviceManager = this.bluetoothDeviceManager;
        bluetoothDeviceManager.getClass();
        Log.d("SoundCraft.BluetoothDeviceManager", "init()");
        BluetoothDevice activeDevice = bluetoothDeviceManager.getActiveDevice();
        Function1 function12 = bluetoothDeviceManager.callback;
        if (function12 != null) {
            BluetoothDevice activeDevice2 = bluetoothDeviceManager.getActiveDevice();
            if (activeDevice2 != null) {
                linkedHashSet2 = bluetoothDeviceManager.getNoiseControlList(activeDevice2);
            } else {
                linkedHashSet2 = new LinkedHashSet();
            }
            function12.invoke(linkedHashSet2);
        }
        if (activeDevice == null) {
            Log.e("SoundCraft.BluetoothDeviceManager", "connected device is empty");
        }
        bluetoothDeviceManager.context.registerReceiver(bluetoothDeviceManager.bluetoothMetadataBroadcastReceiver, new IntentFilter("com.samsung.bluetooth.device.action.META_DATA_CHANGED"));
        Function1 function13 = new Function1() { // from class: com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel$getNoiseControlInfo$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Set set = (Set) obj;
                final Set noiseControlsList = SoundCraftViewModel.this.modelProvider.budsInfo.getNoiseControlsList();
                if (noiseControlsList != null) {
                    set.stream().forEach(new Consumer() { // from class: com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel$getNoiseControlInfo$1$1$1
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj2) {
                            final NoiseControl noiseControl = (NoiseControl) obj2;
                            noiseControlsList.removeIf(new Predicate() { // from class: com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel$getNoiseControlInfo$1$1$1.1
                                @Override // java.util.function.Predicate
                                public final boolean test(Object obj3) {
                                    return Intrinsics.areEqual(((NoiseControl) obj3).getName(), NoiseControl.this.getName());
                                }
                            });
                        }
                    });
                    noiseControlsList.addAll(set);
                } else {
                    SoundCraftViewModel.this.modelProvider.budsInfo.setNoiseControlsList(set);
                }
                Log.d("SoundCraft.SoundCraftViewModel", "noiseControl state changed " + SoundCraftViewModel.this.modelProvider.budsInfo.getNoiseControlsList());
                SoundCraftViewModel.this.notifyChange();
                return Unit.INSTANCE;
            }
        };
        bluetoothDeviceManager.callback = function13;
        BluetoothDevice activeDevice3 = bluetoothDeviceManager.getActiveDevice();
        if (activeDevice3 != null) {
            linkedHashSet = bluetoothDeviceManager.getNoiseControlList(activeDevice3);
        } else {
            linkedHashSet = new LinkedHashSet();
        }
        function13.invoke(linkedHashSet);
    }
}
