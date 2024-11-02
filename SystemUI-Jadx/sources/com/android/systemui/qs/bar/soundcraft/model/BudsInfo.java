package com.android.systemui.qs.bar.soundcraft.model;

import com.google.gson.annotations.SerializedName;
import com.sec.ims.IMSParameter;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BudsInfo {

    @SerializedName(IMSParameter.GENERAL.CONNECTION_STATE)
    private Boolean connectionState;

    @SerializedName("equalizerList")
    private List<Equalizer> equalizerList;

    @SerializedName("headTracking")
    private Boolean headTracking;

    @SerializedName("noiseCancelingLevel")
    private Integer noiseCancelingLevel;

    @SerializedName("noiseControlsList")
    private Set<NoiseControl> noiseControlsList;

    @SerializedName("oneEarbudNoiseControls")
    private Boolean oneEarbudNoiseControls;

    @SerializedName("spatialAudio")
    private Boolean spatialAudio;

    @SerializedName("touchControls")
    private Boolean touchControls;

    @SerializedName("voiceBoost")
    private Boolean voiceBoost;

    @SerializedName("volumeNormalization")
    private Boolean volumeNormalization;

    @SerializedName("wearingL")
    private Boolean wearingL;

    @SerializedName("wearingR")
    private Boolean wearingR;

    public BudsInfo() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BudsInfo)) {
            return false;
        }
        BudsInfo budsInfo = (BudsInfo) obj;
        if (Intrinsics.areEqual(this.connectionState, budsInfo.connectionState) && Intrinsics.areEqual(this.equalizerList, budsInfo.equalizerList) && Intrinsics.areEqual(this.noiseControlsList, budsInfo.noiseControlsList) && Intrinsics.areEqual(this.noiseCancelingLevel, budsInfo.noiseCancelingLevel) && Intrinsics.areEqual(this.touchControls, budsInfo.touchControls) && Intrinsics.areEqual(this.wearingL, budsInfo.wearingL) && Intrinsics.areEqual(this.wearingR, budsInfo.wearingR) && Intrinsics.areEqual(this.oneEarbudNoiseControls, budsInfo.oneEarbudNoiseControls) && Intrinsics.areEqual(this.spatialAudio, budsInfo.spatialAudio) && Intrinsics.areEqual(this.headTracking, budsInfo.headTracking) && Intrinsics.areEqual(this.voiceBoost, budsInfo.voiceBoost) && Intrinsics.areEqual(this.volumeNormalization, budsInfo.volumeNormalization)) {
            return true;
        }
        return false;
    }

    public final Boolean getConnectionState() {
        return this.connectionState;
    }

    public final List getEqualizerList() {
        return this.equalizerList;
    }

    public final Boolean getHeadTracking() {
        return this.headTracking;
    }

    public final Integer getNoiseCancelingLevel() {
        return this.noiseCancelingLevel;
    }

    public final Set getNoiseControlsList() {
        return this.noiseControlsList;
    }

    public final Boolean getSpatialAudio() {
        return this.spatialAudio;
    }

    public final Boolean getVoiceBoost() {
        return this.voiceBoost;
    }

    public final Boolean getVolumeNormalization() {
        return this.volumeNormalization;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        int hashCode8;
        int hashCode9;
        int hashCode10;
        int hashCode11;
        Boolean bool = this.connectionState;
        int i = 0;
        if (bool == null) {
            hashCode = 0;
        } else {
            hashCode = bool.hashCode();
        }
        int i2 = hashCode * 31;
        List<Equalizer> list = this.equalizerList;
        if (list == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = list.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        Set<NoiseControl> set = this.noiseControlsList;
        if (set == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = set.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        Integer num = this.noiseCancelingLevel;
        if (num == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = num.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        Boolean bool2 = this.touchControls;
        if (bool2 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = bool2.hashCode();
        }
        int i6 = (i5 + hashCode5) * 31;
        Boolean bool3 = this.wearingL;
        if (bool3 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = bool3.hashCode();
        }
        int i7 = (i6 + hashCode6) * 31;
        Boolean bool4 = this.wearingR;
        if (bool4 == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = bool4.hashCode();
        }
        int i8 = (i7 + hashCode7) * 31;
        Boolean bool5 = this.oneEarbudNoiseControls;
        if (bool5 == null) {
            hashCode8 = 0;
        } else {
            hashCode8 = bool5.hashCode();
        }
        int i9 = (i8 + hashCode8) * 31;
        Boolean bool6 = this.spatialAudio;
        if (bool6 == null) {
            hashCode9 = 0;
        } else {
            hashCode9 = bool6.hashCode();
        }
        int i10 = (i9 + hashCode9) * 31;
        Boolean bool7 = this.headTracking;
        if (bool7 == null) {
            hashCode10 = 0;
        } else {
            hashCode10 = bool7.hashCode();
        }
        int i11 = (i10 + hashCode10) * 31;
        Boolean bool8 = this.voiceBoost;
        if (bool8 == null) {
            hashCode11 = 0;
        } else {
            hashCode11 = bool8.hashCode();
        }
        int i12 = (i11 + hashCode11) * 31;
        Boolean bool9 = this.volumeNormalization;
        if (bool9 != null) {
            i = bool9.hashCode();
        }
        return i12 + i;
    }

    public final void setHeadTracking(Boolean bool) {
        this.headTracking = bool;
    }

    public final void setNoiseCancelingLevel(Integer num) {
        this.noiseCancelingLevel = num;
    }

    public final void setNoiseControlsList(Set set) {
        this.noiseControlsList = set;
    }

    public final void setSpatialAudio(Boolean bool) {
        this.spatialAudio = bool;
    }

    public final void setVoiceBoost(Boolean bool) {
        this.voiceBoost = bool;
    }

    public final void setVolumeNormalization(Boolean bool) {
        this.volumeNormalization = bool;
    }

    public final String toString() {
        return "BudsInfo(connectionState=" + this.connectionState + ", equalizerList=" + this.equalizerList + ", noiseControlsList=" + this.noiseControlsList + ", noiseCancelingLevel=" + this.noiseCancelingLevel + ", touchControls=" + this.touchControls + ", wearingL=" + this.wearingL + ", wearingR=" + this.wearingR + ", oneEarbudNoiseControls=" + this.oneEarbudNoiseControls + ", spatialAudio=" + this.spatialAudio + ", headTracking=" + this.headTracking + ", voiceBoost=" + this.voiceBoost + ", volumeNormalization=" + this.volumeNormalization + ")";
    }

    public BudsInfo(Boolean bool, List<Equalizer> list, Set<NoiseControl> set, Integer num, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, Boolean bool9) {
        this.connectionState = bool;
        this.equalizerList = list;
        this.noiseControlsList = set;
        this.noiseCancelingLevel = num;
        this.touchControls = bool2;
        this.wearingL = bool3;
        this.wearingR = bool4;
        this.oneEarbudNoiseControls = bool5;
        this.spatialAudio = bool6;
        this.headTracking = bool7;
        this.voiceBoost = bool8;
        this.volumeNormalization = bool9;
    }

    public /* synthetic */ BudsInfo(Boolean bool, List list, Set set, Integer num, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, Boolean bool9, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : list, (i & 4) != 0 ? null : set, (i & 8) != 0 ? null : num, (i & 16) != 0 ? null : bool2, (i & 32) != 0 ? null : bool3, (i & 64) != 0 ? null : bool4, (i & 128) != 0 ? null : bool5, (i & 256) != 0 ? null : bool6, (i & 512) != 0 ? null : bool7, (i & 1024) != 0 ? null : bool8, (i & 2048) != 0 ? null : bool9);
    }
}
