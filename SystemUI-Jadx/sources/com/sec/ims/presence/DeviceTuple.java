package com.sec.ims.presence;

import android.util.Pair;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class DeviceTuple {
    public List<Pair<String, String>> mDescriptions;
    public List<String> mDeviceCapabilities;
    public String mDeviceId;
    public List<Pair<String, String>> mNotes;
    public String mTimestamp;

    public DeviceTuple(String str) {
        this.mDeviceId = str;
        this.mDeviceCapabilities = null;
        this.mDescriptions = null;
        this.mNotes = null;
        this.mTimestamp = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DeviceTuple deviceTuple = (DeviceTuple) obj;
        String str = this.mDeviceId;
        if (str == null) {
            if (deviceTuple.mDeviceId != null) {
                return false;
            }
        } else if (!str.equals(deviceTuple.mDeviceId)) {
            return false;
        }
        List<String> list = this.mDeviceCapabilities;
        if (list == null) {
            if (deviceTuple.mDeviceCapabilities != null) {
                return false;
            }
        } else if (!list.equals(deviceTuple.mDeviceCapabilities)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        String str = this.mDeviceId;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (hashCode + 31) * 31;
        List<String> list = this.mDeviceCapabilities;
        if (list == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = list.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        List<Pair<String, String>> list2 = this.mDescriptions;
        if (list2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = list2.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        List<Pair<String, String>> list3 = this.mNotes;
        if (list3 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = list3.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        String str2 = this.mTimestamp;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return i5 + i;
    }

    public DeviceTuple(String str, List<String> list) {
        this(str);
        this.mDeviceCapabilities = list;
    }

    public DeviceTuple(String str, List<String> list, String str2) {
        this(str, list);
        this.mTimestamp = str2;
    }

    public DeviceTuple(String str, List<String> list, List<Pair<String, String>> list2, List<Pair<String, String>> list3, String str2) {
        this(str, list, str2);
        this.mDescriptions = list2;
        this.mNotes = list3;
    }
}
