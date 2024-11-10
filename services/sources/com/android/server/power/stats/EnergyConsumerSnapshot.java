package com.android.server.power.stats;

import android.hardware.power.stats.EnergyConsumer;
import android.hardware.power.stats.EnergyConsumerAttribution;
import android.hardware.power.stats.EnergyConsumerResult;
import android.os.BatteryStats;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;

/* loaded from: classes3.dex */
public class EnergyConsumerSnapshot {
    public final SparseArray mAttributionSnapshots;
    public BatteryStats.EnergyConsumerDetails mEnergyConsumerDetails;
    public final SparseLongArray mEnergyConsumerSnapshots;
    public final SparseArray mEnergyConsumers;
    public final int mNumCpuClusterOrdinals;
    public final int mNumDisplayOrdinals;
    public final int mNumOtherOrdinals;
    public final SparseIntArray mVoltageSnapshots;

    public EnergyConsumerSnapshot(SparseArray sparseArray) {
        this.mEnergyConsumers = sparseArray;
        this.mEnergyConsumerSnapshots = new SparseLongArray(sparseArray.size());
        this.mVoltageSnapshots = new SparseIntArray(sparseArray.size());
        this.mNumCpuClusterOrdinals = calculateNumOrdinals(2, sparseArray);
        this.mNumDisplayOrdinals = calculateNumOrdinals(3, sparseArray);
        int calculateNumOrdinals = calculateNumOrdinals(0, sparseArray);
        this.mNumOtherOrdinals = calculateNumOrdinals;
        this.mAttributionSnapshots = new SparseArray(calculateNumOrdinals);
    }

    /* loaded from: classes3.dex */
    public class EnergyConsumerDeltaData {
        public long bluetoothChargeUC = -1;
        public long[] cpuClusterChargeUC = null;
        public long[] displayChargeUC = null;
        public long gnssChargeUC = -1;
        public long mobileRadioChargeUC = -1;
        public long wifiChargeUC = -1;
        public long cameraChargeUC = -1;
        public long[] otherTotalChargeUC = null;
        public SparseLongArray[] otherUidChargesUC = null;

        public boolean isEmpty() {
            return this.bluetoothChargeUC <= 0 && isEmpty(this.cpuClusterChargeUC) && isEmpty(this.displayChargeUC) && this.gnssChargeUC <= 0 && this.mobileRadioChargeUC <= 0 && this.wifiChargeUC <= 0 && isEmpty(this.otherTotalChargeUC);
        }

        public final boolean isEmpty(long[] jArr) {
            if (jArr == null) {
                return true;
            }
            for (long j : jArr) {
                if (j > 0) {
                    return false;
                }
            }
            return true;
        }
    }

    public EnergyConsumerDeltaData updateAndGetDelta(EnergyConsumerResult[] energyConsumerResultArr, int i) {
        int i2;
        int i3;
        String str;
        EnergyConsumerResult[] energyConsumerResultArr2 = energyConsumerResultArr;
        boolean z = false;
        if (energyConsumerResultArr2 == null || energyConsumerResultArr2.length == 0) {
            return null;
        }
        String str2 = "EnergyConsumerSnapshot";
        if (i <= 0) {
            Slog.wtf("EnergyConsumerSnapshot", "Unexpected battery voltage (" + i + " mV) when taking energy consumer snapshot");
            return null;
        }
        EnergyConsumerDeltaData energyConsumerDeltaData = new EnergyConsumerDeltaData();
        int length = energyConsumerResultArr2.length;
        int i4 = 0;
        while (i4 < length) {
            EnergyConsumerResult energyConsumerResult = energyConsumerResultArr2[i4];
            int i5 = energyConsumerResult.id;
            long j = energyConsumerResult.energyUWs;
            EnergyConsumerAttribution[] energyConsumerAttributionArr = energyConsumerResult.attribution;
            EnergyConsumer energyConsumer = (EnergyConsumer) this.mEnergyConsumers.get(i5, z);
            if (energyConsumer == null) {
                Slog.e(str2, "updateAndGetDelta given invalid consumerId " + i5);
                i2 = length;
                i3 = i4;
                str = str2;
            } else {
                byte b = energyConsumer.type;
                int i6 = energyConsumer.ordinal;
                String str3 = str2;
                long j2 = this.mEnergyConsumerSnapshots.get(i5, -1L);
                int i7 = this.mVoltageSnapshots.get(i5);
                this.mEnergyConsumerSnapshots.put(i5, j);
                this.mVoltageSnapshots.put(i5, i);
                int i8 = ((i7 + i) + 1) / 2;
                SparseLongArray updateAndGetDeltaForTypeOther = updateAndGetDeltaForTypeOther(energyConsumer, energyConsumerAttributionArr, i8);
                if (j2 >= 0 && j != j2) {
                    i2 = length;
                    i3 = i4;
                    long j3 = j - j2;
                    if (j3 < 0 || i7 <= 0) {
                        str = str3;
                        Slog.e(str, "Bad data! EnergyConsumer " + energyConsumer.name + ": new energy (" + j + ") < old energy (" + j2 + "), new voltage (" + i + "), old voltage (" + i7 + "). Skipping. ");
                    } else {
                        long calculateChargeConsumedUC = calculateChargeConsumedUC(j3, i8);
                        switch (b) {
                            case 0:
                                if (energyConsumerDeltaData.otherTotalChargeUC == null) {
                                    int i9 = this.mNumOtherOrdinals;
                                    energyConsumerDeltaData.otherTotalChargeUC = new long[i9];
                                    energyConsumerDeltaData.otherUidChargesUC = new SparseLongArray[i9];
                                }
                                energyConsumerDeltaData.otherTotalChargeUC[i6] = calculateChargeConsumedUC;
                                energyConsumerDeltaData.otherUidChargesUC[i6] = updateAndGetDeltaForTypeOther;
                                break;
                            case 1:
                                energyConsumerDeltaData.bluetoothChargeUC = calculateChargeConsumedUC;
                                break;
                            case 2:
                                if (energyConsumerDeltaData.cpuClusterChargeUC == null) {
                                    energyConsumerDeltaData.cpuClusterChargeUC = new long[this.mNumCpuClusterOrdinals];
                                }
                                energyConsumerDeltaData.cpuClusterChargeUC[i6] = calculateChargeConsumedUC;
                                break;
                            case 3:
                                if (energyConsumerDeltaData.displayChargeUC == null) {
                                    energyConsumerDeltaData.displayChargeUC = new long[this.mNumDisplayOrdinals];
                                }
                                energyConsumerDeltaData.displayChargeUC[i6] = calculateChargeConsumedUC;
                                break;
                            case 4:
                                energyConsumerDeltaData.gnssChargeUC = calculateChargeConsumedUC;
                                break;
                            case 5:
                                energyConsumerDeltaData.mobileRadioChargeUC = calculateChargeConsumedUC;
                                break;
                            case 6:
                                energyConsumerDeltaData.wifiChargeUC = calculateChargeConsumedUC;
                                break;
                            case 7:
                                energyConsumerDeltaData.cameraChargeUC = calculateChargeConsumedUC;
                                break;
                            default:
                                str = str3;
                                Slog.w(str, "Ignoring consumer " + energyConsumer.name + " of unknown type " + ((int) b));
                                continue;
                        }
                    }
                } else {
                    i2 = length;
                    i3 = i4;
                }
                str = str3;
            }
            i4 = i3 + 1;
            energyConsumerResultArr2 = energyConsumerResultArr;
            str2 = str;
            length = i2;
            z = false;
        }
        return energyConsumerDeltaData;
    }

    public final SparseLongArray updateAndGetDeltaForTypeOther(EnergyConsumer energyConsumer, EnergyConsumerAttribution[] energyConsumerAttributionArr, int i) {
        EnergyConsumerAttribution[] energyConsumerAttributionArr2;
        SparseLongArray sparseLongArray;
        if (energyConsumer.type != 0) {
            return null;
        }
        int i2 = 0;
        EnergyConsumerAttribution[] energyConsumerAttributionArr3 = energyConsumerAttributionArr == null ? new EnergyConsumerAttribution[0] : energyConsumerAttributionArr;
        SparseLongArray sparseLongArray2 = (SparseLongArray) this.mAttributionSnapshots.get(energyConsumer.id, null);
        if (sparseLongArray2 == null) {
            SparseLongArray sparseLongArray3 = new SparseLongArray(energyConsumerAttributionArr3.length);
            this.mAttributionSnapshots.put(energyConsumer.id, sparseLongArray3);
            int length = energyConsumerAttributionArr3.length;
            while (i2 < length) {
                EnergyConsumerAttribution energyConsumerAttribution = energyConsumerAttributionArr3[i2];
                sparseLongArray3.put(energyConsumerAttribution.uid, energyConsumerAttribution.energyUWs);
                i2++;
            }
            return null;
        }
        SparseLongArray sparseLongArray4 = new SparseLongArray();
        int length2 = energyConsumerAttributionArr3.length;
        while (i2 < length2) {
            EnergyConsumerAttribution energyConsumerAttribution2 = energyConsumerAttributionArr3[i2];
            int i3 = energyConsumerAttribution2.uid;
            long j = energyConsumerAttribution2.energyUWs;
            long j2 = sparseLongArray2.get(i3, 0L);
            sparseLongArray2.put(i3, j);
            if (j2 >= 0 && j != j2) {
                energyConsumerAttributionArr2 = energyConsumerAttributionArr3;
                sparseLongArray = sparseLongArray2;
                long j3 = j - j2;
                if (j3 < 0 || i <= 0) {
                    Slog.e("EnergyConsumerSnapshot", "EnergyConsumer " + energyConsumer.name + ": new energy (" + j + ") but old energy (" + j2 + "). Average voltage (" + i + ")Skipping. ");
                } else {
                    sparseLongArray4.put(i3, calculateChargeConsumedUC(j3, i));
                }
            } else {
                energyConsumerAttributionArr2 = energyConsumerAttributionArr3;
                sparseLongArray = sparseLongArray2;
            }
            i2++;
            sparseLongArray2 = sparseLongArray;
            energyConsumerAttributionArr3 = energyConsumerAttributionArr2;
        }
        return sparseLongArray4;
    }

    public String[] getOtherOrdinalNames() {
        String[] strArr = new String[this.mNumOtherOrdinals];
        int size = this.mEnergyConsumers.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            EnergyConsumer energyConsumer = (EnergyConsumer) this.mEnergyConsumers.valueAt(i2);
            if (energyConsumer.type == 0) {
                strArr[i] = sanitizeCustomBucketName(energyConsumer.name);
                i++;
            }
        }
        return strArr;
    }

    public final String sanitizeCustomBucketName(String str) {
        if (str == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (char c : str.toCharArray()) {
            if (Character.isWhitespace(c)) {
                sb.append(' ');
            } else if (Character.isISOControl(c)) {
                sb.append('_');
            } else {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    public static int calculateNumOrdinals(int i, SparseArray sparseArray) {
        if (sparseArray == null) {
            return 0;
        }
        int size = sparseArray.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            if (((EnergyConsumer) sparseArray.valueAt(i3)).type == i) {
                i2++;
            }
        }
        return i2;
    }

    public final long calculateChargeConsumedUC(long j, int i) {
        return ((j * 1000) + (i / 2)) / i;
    }

    public BatteryStats.EnergyConsumerDetails getEnergyConsumerDetails(EnergyConsumerDeltaData energyConsumerDeltaData) {
        if (this.mEnergyConsumerDetails == null) {
            this.mEnergyConsumerDetails = createEnergyConsumerDetails();
        }
        long[] jArr = this.mEnergyConsumerDetails.chargeUC;
        int i = 0;
        while (true) {
            BatteryStats.EnergyConsumerDetails energyConsumerDetails = this.mEnergyConsumerDetails;
            BatteryStats.EnergyConsumerDetails.EnergyConsumer[] energyConsumerArr = energyConsumerDetails.consumers;
            if (i >= energyConsumerArr.length) {
                return energyConsumerDetails;
            }
            BatteryStats.EnergyConsumerDetails.EnergyConsumer energyConsumer = energyConsumerArr[i];
            switch (energyConsumer.type) {
                case 0:
                    long[] jArr2 = energyConsumerDeltaData.otherTotalChargeUC;
                    if (jArr2 != null) {
                        jArr[i] = jArr2[energyConsumer.ordinal];
                        break;
                    } else {
                        jArr[i] = -1;
                        break;
                    }
                case 1:
                    jArr[i] = energyConsumerDeltaData.bluetoothChargeUC;
                    break;
                case 2:
                    long[] jArr3 = energyConsumerDeltaData.cpuClusterChargeUC;
                    if (jArr3 != null) {
                        jArr[i] = jArr3[energyConsumer.ordinal];
                        break;
                    } else {
                        jArr[i] = -1;
                        break;
                    }
                case 3:
                    long[] jArr4 = energyConsumerDeltaData.displayChargeUC;
                    if (jArr4 != null) {
                        jArr[i] = jArr4[energyConsumer.ordinal];
                        break;
                    } else {
                        jArr[i] = -1;
                        break;
                    }
                case 4:
                    jArr[i] = energyConsumerDeltaData.gnssChargeUC;
                    break;
                case 5:
                    jArr[i] = energyConsumerDeltaData.mobileRadioChargeUC;
                    break;
                case 6:
                    jArr[i] = energyConsumerDeltaData.wifiChargeUC;
                    break;
                case 7:
                    jArr[i] = energyConsumerDeltaData.cameraChargeUC;
                    break;
                default:
                    jArr[i] = -1;
                    break;
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.os.BatteryStats.EnergyConsumerDetails createEnergyConsumerDetails() {
        /*
            r11 = this;
            android.os.BatteryStats$EnergyConsumerDetails r0 = new android.os.BatteryStats$EnergyConsumerDetails
            r0.<init>()
            android.util.SparseArray r1 = r11.mEnergyConsumers
            int r1 = r1.size()
            android.os.BatteryStats$EnergyConsumerDetails$EnergyConsumer[] r1 = new android.os.BatteryStats.EnergyConsumerDetails.EnergyConsumer[r1]
            r0.consumers = r1
            r1 = 0
            r2 = r1
        L11:
            android.util.SparseArray r3 = r11.mEnergyConsumers
            int r3 = r3.size()
            if (r2 >= r3) goto Lae
            android.util.SparseArray r3 = r11.mEnergyConsumers
            java.lang.Object r3 = r3.valueAt(r2)
            android.hardware.power.stats.EnergyConsumer r3 = (android.hardware.power.stats.EnergyConsumer) r3
            android.os.BatteryStats$EnergyConsumerDetails$EnergyConsumer r4 = new android.os.BatteryStats$EnergyConsumerDetails$EnergyConsumer
            r4.<init>()
            byte r5 = r3.type
            r4.type = r5
            int r6 = r3.ordinal
            r4.ordinal = r6
            switch(r5) {
                case 0: goto L54;
                case 1: goto L4f;
                case 2: goto L4a;
                case 3: goto L45;
                case 4: goto L40;
                case 5: goto L3b;
                case 6: goto L36;
                default: goto L31;
            }
        L31:
            java.lang.String r5 = "UNKNOWN"
            r4.name = r5
            goto L5c
        L36:
            java.lang.String r5 = "WIFI"
            r4.name = r5
            goto L5c
        L3b:
            java.lang.String r5 = "MOBILE_RADIO"
            r4.name = r5
            goto L5c
        L40:
            java.lang.String r5 = "GNSS"
            r4.name = r5
            goto L5c
        L45:
            java.lang.String r5 = "DISPLAY"
            r4.name = r5
            goto L5c
        L4a:
            java.lang.String r5 = "CPU"
            r4.name = r5
            goto L5c
        L4f:
            java.lang.String r5 = "BLUETOOTH"
            r4.name = r5
            goto L5c
        L54:
            java.lang.String r5 = r3.name
            java.lang.String r5 = r11.sanitizeCustomBucketName(r5)
            r4.name = r5
        L5c:
            int r5 = r4.type
            if (r5 == 0) goto La6
            int r5 = r4.ordinal
            r6 = 1
            if (r5 == 0) goto L67
            r5 = r6
            goto L68
        L67:
            r5 = r1
        L68:
            if (r5 != 0) goto L89
            r7 = r1
        L6b:
            android.util.SparseArray r8 = r11.mEnergyConsumers
            int r8 = r8.size()
            if (r7 >= r8) goto L89
            android.util.SparseArray r8 = r11.mEnergyConsumers
            java.lang.Object r8 = r8.valueAt(r7)
            android.hardware.power.stats.EnergyConsumer r8 = (android.hardware.power.stats.EnergyConsumer) r8
            byte r9 = r8.type
            int r10 = r4.type
            if (r9 != r10) goto L86
            int r8 = r8.ordinal
            if (r8 == 0) goto L86
            goto L8a
        L86:
            int r7 = r7 + 1
            goto L6b
        L89:
            r6 = r5
        L8a:
            if (r6 == 0) goto La6
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = r4.name
            r5.append(r6)
            java.lang.String r6 = "/"
            r5.append(r6)
            int r3 = r3.ordinal
            r5.append(r3)
            java.lang.String r3 = r5.toString()
            r4.name = r3
        La6:
            android.os.BatteryStats$EnergyConsumerDetails$EnergyConsumer[] r3 = r0.consumers
            r3[r2] = r4
            int r2 = r2 + 1
            goto L11
        Lae:
            android.os.BatteryStats$EnergyConsumerDetails$EnergyConsumer[] r11 = r0.consumers
            int r11 = r11.length
            long[] r11 = new long[r11]
            r0.chargeUC = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.power.stats.EnergyConsumerSnapshot.createEnergyConsumerDetails():android.os.BatteryStats$EnergyConsumerDetails");
    }
}
