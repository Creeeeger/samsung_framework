package com.android.systemui.statusbar.disableflags;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DisableFlagsLogger {
    public final List disable1FlagsList;
    public final List disable2FlagsList;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DisableFlag {
        public final int bitMask;
        public final char flagIsSetSymbol;
        public final char flagNotSetSymbol;

        public DisableFlag(int i, char c, char c2) {
            this.bitMask = i;
            this.flagIsSetSymbol = c;
            this.flagNotSetSymbol = c2;
        }

        public final char getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(int i) {
            if ((i & this.bitMask) != 0) {
                return this.flagIsSetSymbol;
            }
            return this.flagNotSetSymbol;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DisableState {
        public final int disable1;
        public final int disable2;

        public DisableState(int i, int i2) {
            this.disable1 = i;
            this.disable2 = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DisableState)) {
                return false;
            }
            DisableState disableState = (DisableState) obj;
            if (this.disable1 == disableState.disable1 && this.disable2 == disableState.disable2) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.disable2) + (Integer.hashCode(this.disable1) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("DisableState(disable1=");
            sb.append(this.disable1);
            sb.append(", disable2=");
            return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.disable2, ")");
        }
    }

    public DisableFlagsLogger() {
        this(DisableFlagsLoggerKt.defaultDisable1FlagsList, DisableFlagsLoggerKt.defaultDisable2FlagsList);
    }

    public static boolean flagsListHasDuplicateSymbols(List list) {
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Character.valueOf(((DisableFlag) it.next()).getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(0)));
        }
        int size = CollectionsKt___CollectionsKt.distinct(arrayList).size();
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Character.valueOf(((DisableFlag) it2.next()).getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Integer.MAX_VALUE)));
        }
        int size2 = CollectionsKt___CollectionsKt.distinct(arrayList2).size();
        if (size >= list.size() && size2 >= list.size()) {
            return false;
        }
        return true;
    }

    public final String getDiffString(DisableState disableState, DisableState disableState2) {
        if (Intrinsics.areEqual(disableState, disableState2)) {
            return "(unchanged)";
        }
        StringBuilder sb = new StringBuilder("(changed: ");
        for (DisableFlag disableFlag : this.disable1FlagsList) {
            char flagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core = disableFlag.getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(disableState2.disable1);
            if (disableFlag.getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(disableState.disable1) != flagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core) {
                sb.append(flagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core);
            }
        }
        sb.append(".");
        for (DisableFlag disableFlag2 : this.disable2FlagsList) {
            char flagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core2 = disableFlag2.getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(disableState2.disable2);
            if (disableFlag2.getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(disableState.disable2) != flagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core2) {
                sb.append(flagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core2);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public final String getDisableFlagsString(DisableState disableState, DisableState disableState2, DisableState disableState3) {
        StringBuilder sb = new StringBuilder("Received new disable state: ");
        if (disableState != null && !Intrinsics.areEqual(disableState, disableState2)) {
            sb.append("Old: ");
            sb.append(getFlagsString(disableState));
            sb.append(" | New: ");
            sb.append(getFlagsString(disableState2));
            sb.append(" ");
            sb.append(getDiffString(disableState, disableState2));
        } else if (disableState != null && Intrinsics.areEqual(disableState, disableState2)) {
            sb.append(getFlagsString(disableState2));
            sb.append(" ");
            sb.append(getDiffString(disableState, disableState2));
        } else {
            sb.append(getFlagsString(disableState2));
        }
        if (disableState3 != null && !Intrinsics.areEqual(disableState2, disableState3)) {
            sb.append(" | New after local modification: ");
            sb.append(getFlagsString(disableState3));
            sb.append(" ");
            sb.append(getDiffString(disableState2, disableState3));
        }
        return sb.toString();
    }

    public final String getFlagsString(DisableState disableState) {
        StringBuilder sb = new StringBuilder("");
        Iterator it = this.disable1FlagsList.iterator();
        while (it.hasNext()) {
            sb.append(((DisableFlag) it.next()).getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(disableState.disable1));
        }
        sb.append(".");
        Iterator it2 = this.disable2FlagsList.iterator();
        while (it2.hasNext()) {
            sb.append(((DisableFlag) it2.next()).getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(disableState.disable2));
        }
        return sb.toString();
    }

    public DisableFlagsLogger(List<DisableFlag> list, List<DisableFlag> list2) {
        this.disable1FlagsList = list;
        this.disable2FlagsList = list2;
        if (!flagsListHasDuplicateSymbols(list)) {
            if (flagsListHasDuplicateSymbols(list2)) {
                throw new IllegalArgumentException("disable2 flags must have unique symbols");
            }
            return;
        }
        throw new IllegalArgumentException("disable1 flags must have unique symbols");
    }
}
