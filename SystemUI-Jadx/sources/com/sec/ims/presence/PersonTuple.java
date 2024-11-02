package com.sec.ims.presence;

import android.util.Pair;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class PersonTuple {
    public List<Pair<String, String>> mNotes;
    public String mStatusIcon;
    public String mTimestamp;

    public PersonTuple() {
        this.mStatusIcon = null;
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
        PersonTuple personTuple = (PersonTuple) obj;
        String str = this.mStatusIcon;
        if (str == null) {
            if (personTuple.mStatusIcon != null) {
                return false;
            }
        } else if (!str.equals(personTuple.mStatusIcon)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        String str = this.mStatusIcon;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (hashCode + 31) * 31;
        List<Pair<String, String>> list = this.mNotes;
        if (list == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = list.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        String str2 = this.mTimestamp;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return i3 + i;
    }

    public PersonTuple(String str, List<Pair<String, String>> list, String str2) {
        this.mStatusIcon = str;
        this.mNotes = list;
        this.mTimestamp = str2;
    }
}
