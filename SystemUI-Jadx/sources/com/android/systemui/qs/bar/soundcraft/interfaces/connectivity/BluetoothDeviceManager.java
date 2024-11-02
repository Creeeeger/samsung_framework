package com.android.systemui.qs.bar.soundcraft.interfaces.connectivity;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.media.MediaBluetoothHelper;
import com.android.systemui.qs.bar.soundcraft.model.NoiseControl;
import com.samsung.android.bluetooth.SmepTag;
import com.samsung.android.knox.custom.CustomDeviceManager;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BluetoothDeviceManager {
    public static final byte[] OFF;
    public static final byte[] ON;
    public final BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1 bluetoothMetadataBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.systemui.qs.bar.soundcraft.interfaces.connectivity.BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            BluetoothDeviceManager bluetoothDeviceManager;
            Function1 function1;
            String action = intent.getAction();
            if (!Intrinsics.areEqual("com.samsung.bluetooth.device.action.META_DATA_CHANGED", action)) {
                return;
            }
            Log.d("SoundCraft.BluetoothDeviceManager", "action: " + action);
            BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
            if (bluetoothDevice != null && (function1 = (bluetoothDeviceManager = BluetoothDeviceManager.this).callback) != null) {
                function1.invoke(bluetoothDeviceManager.getNoiseControlList(bluetoothDevice));
            }
        }
    };
    public Function1 callback;
    public final Context context;
    public boolean isSupportANC;
    public boolean isSupportAdaptive;
    public boolean isSupportAmbient;
    public final MediaBluetoothHelper mediaBluetoothHelper;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SmepTag.values().length];
            try {
                iArr[SmepTag.FEATURE_ANC_LEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SmepTag.FEATURE_AMBIENT_LEVEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SmepTag.FEATURE_RESPONSIVE_HEARING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
        OFF = new byte[]{0};
        ON = new byte[]{1};
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.qs.bar.soundcraft.interfaces.connectivity.BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1] */
    public BluetoothDeviceManager(Context context, MediaBluetoothHelper mediaBluetoothHelper) {
        this.context = context;
        this.mediaBluetoothHelper = mediaBluetoothHelper;
    }

    public static byte[] intToBytes(int i) {
        return new byte[]{(byte) i, (byte) (i >> 8)};
    }

    public static byte[] makeTlv(int i, byte[] bArr) {
        boolean z;
        if (SmepTag.isValidConstantKey(i) && bArr != null) {
            if (bArr.length == 0) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byteArrayOutputStream.write(intToBytes(i));
                    byteArrayOutputStream.write((byte) bArr.length);
                    byteArrayOutputStream.write(bArr);
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return byteArrayOutputStream.toByteArray();
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
    
        if (r1 == null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.bluetooth.BluetoothDevice getActiveDevice() {
        /*
            r1 = this;
            com.android.systemui.media.MediaBluetoothHelper r1 = r1.mediaBluetoothHelper
            android.bluetooth.BluetoothA2dp r1 = r1.a2dp
            if (r1 == 0) goto L1d
            com.android.systemui.volume.util.BluetoothA2dpUtil r0 = com.android.systemui.volume.util.BluetoothA2dpUtil.INSTANCE
            r0.getClass()
            java.util.List r1 = com.android.systemui.volume.util.BluetoothA2dpUtil.getOrderConnectedDevices(r1)
            if (r1 == 0) goto L1d
            boolean r0 = r1.isEmpty()
            r0 = r0 ^ 1
            if (r0 == 0) goto L1a
            goto L1b
        L1a:
            r1 = 0
        L1b:
            if (r1 != 0) goto L1f
        L1d:
            kotlin.collections.EmptyList r1 = kotlin.collections.EmptyList.INSTANCE
        L1f:
            java.lang.Object r1 = kotlin.collections.CollectionsKt___CollectionsKt.firstOrNull(r1)
            android.bluetooth.BluetoothDevice r1 = (android.bluetooth.BluetoothDevice) r1
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.bar.soundcraft.interfaces.connectivity.BluetoothDeviceManager.getActiveDevice():android.bluetooth.BluetoothDevice");
    }

    public final String getActiveNoiseControlTitle() {
        return this.context.getResources().getString(R.string.sound_craft_noise_cancelling);
    }

    public final String getAdaptiveTitle() {
        return this.context.getResources().getString(R.string.sound_craft_adaptive);
    }

    public final String getAmbientSoundTitle() {
        return this.context.getResources().getString(R.string.sound_craft_ambient_sound);
    }

    public final Set getNoiseControlList(BluetoothDevice bluetoothDevice) {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        boolean z4;
        boolean z5;
        boolean z6;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        byte[] semGetMetadata = bluetoothDevice.semGetMetadata(intToBytes(SmepTag.SUPPORTED_FEATURES.getTag()));
        boolean z7 = true;
        if (semGetMetadata != null && semGetMetadata.length >= 5) {
            if ((((semGetMetadata[0] & 255) | ((semGetMetadata[1] & 255) << 8)) & CustomDeviceManager.QUICK_PANEL_ALL) == SmepTag.SUPPORTED_FEATURES.getTag()) {
                int i2 = 2;
                while (i2 < semGetMetadata.length) {
                    int i3 = ((semGetMetadata[i2] & 255) | ((semGetMetadata[i2 + 1] & 255) << 8)) & CustomDeviceManager.QUICK_PANEL_ALL;
                    int i4 = semGetMetadata[i2 + 2] & 255;
                    byte[] bArr = new byte[i4];
                    System.arraycopy(semGetMetadata, i2 + 3, bArr, 0, i4);
                    i2 += i4 + 3;
                    SmepTag smepKey = SmepTag.getSmepKey(i3);
                    if (smepKey == null) {
                        i = -1;
                    } else {
                        i = WhenMappings.$EnumSwitchMapping$0[smepKey.ordinal()];
                    }
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                if (bArr[0] == 1) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                this.isSupportAdaptive = z4;
                            }
                        } else {
                            if (bArr[0] == 1) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            this.isSupportAmbient = z5;
                        }
                    } else {
                        if (bArr[0] == 1) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        this.isSupportANC = z6;
                    }
                }
            }
        } else {
            Log.e("SoundCraft.BluetoothDeviceManager", "parseSupportedFeatures :: DataPacket is too short.");
        }
        ActionBarContextView$$ExternalSyntheticOutline0.m(KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("getNoiseControlList isSupportANC: ", this.isSupportANC, ", isSupportAmbient: ", this.isSupportAmbient, ", isSupportAdaptive: "), this.isSupportAdaptive, "SoundCraft.BluetoothDeviceManager");
        if (this.isSupportANC) {
            byte[] semGetMetadata2 = bluetoothDevice.semGetMetadata(intToBytes(SmepTag.STATE_ANC.getTag()));
            if (semGetMetadata2 != null && semGetMetadata2.length > 3 && semGetMetadata2[3] == 1) {
                z = true;
            } else {
                z = false;
            }
            linkedHashSet.add(new NoiseControl(getActiveNoiseControlTitle(), z));
        } else {
            z = false;
        }
        if (this.isSupportAmbient) {
            byte[] semGetMetadata3 = bluetoothDevice.semGetMetadata(intToBytes(SmepTag.STATE_AMBIENT.getTag()));
            if (semGetMetadata3 != null && semGetMetadata3.length > 3 && semGetMetadata3[3] == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            linkedHashSet.add(new NoiseControl(getAmbientSoundTitle(), z2));
        } else {
            z2 = false;
        }
        if (this.isSupportAdaptive) {
            byte[] semGetMetadata4 = bluetoothDevice.semGetMetadata(intToBytes(SmepTag.STATE_RESPONSIVE_HEARING.getTag()));
            if (semGetMetadata4 != null && semGetMetadata4.length > 3 && semGetMetadata4[3] == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            linkedHashSet.add(new NoiseControl(getAdaptiveTitle(), z3));
        } else {
            z3 = false;
        }
        String noiseControlOffTitle = getNoiseControlOffTitle();
        if (z || z2 || z3) {
            z7 = false;
        }
        linkedHashSet.add(new NoiseControl(noiseControlOffTitle, z7));
        return linkedHashSet;
    }

    public final String getNoiseControlOffTitle() {
        return this.context.getResources().getString(R.string.sound_craft_wearable_noise_control_off);
    }

    public final void updateNoiseControlList(NoiseControl noiseControl) {
        BluetoothDevice activeDevice = getActiveDevice();
        if (activeDevice != null) {
            String name = noiseControl.getName();
            boolean areEqual = Intrinsics.areEqual(name, getActiveNoiseControlTitle());
            byte[] bArr = ON;
            if (areEqual) {
                Log.d("SoundCraft.BluetoothDeviceManager", "setAncState");
                activeDevice.semSetMetadata(makeTlv(SmepTag.STATE_ANC.getTag(), bArr));
                return;
            }
            if (Intrinsics.areEqual(name, getAmbientSoundTitle())) {
                Log.d("SoundCraft.BluetoothDeviceManager", "setAmbientState");
                activeDevice.semSetMetadata(makeTlv(SmepTag.STATE_AMBIENT.getTag(), bArr));
                return;
            }
            if (Intrinsics.areEqual(name, getNoiseControlOffTitle())) {
                Log.d("SoundCraft.BluetoothDeviceManager", "setAncState");
                int tag = SmepTag.STATE_ANC.getTag();
                byte[] bArr2 = OFF;
                activeDevice.semSetMetadata(makeTlv(tag, bArr2));
                Log.d("SoundCraft.BluetoothDeviceManager", "setAmbientState");
                activeDevice.semSetMetadata(makeTlv(SmepTag.STATE_AMBIENT.getTag(), bArr2));
                Log.d("SoundCraft.BluetoothDeviceManager", "setAdaptiveState");
                activeDevice.semSetMetadata(makeTlv(SmepTag.STATE_RESPONSIVE_HEARING.getTag(), bArr2));
                return;
            }
            if (Intrinsics.areEqual(name, getAdaptiveTitle())) {
                Log.d("SoundCraft.BluetoothDeviceManager", "setAdaptiveState");
                activeDevice.semSetMetadata(makeTlv(SmepTag.STATE_RESPONSIVE_HEARING.getTag(), bArr));
            }
        }
    }
}
