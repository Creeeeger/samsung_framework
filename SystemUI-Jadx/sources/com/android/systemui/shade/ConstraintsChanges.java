package com.android.systemui.shade;

import androidx.constraintlayout.widget.ConstraintSet;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ConstraintsChanges {
    public final Function1 largeScreenConstraintsChanges;
    public final Function1 qqsConstraintsChanges;
    public final Function1 qsConstraintsChanges;

    public ConstraintsChanges() {
        this(null, null, null, 7, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConstraintsChanges)) {
            return false;
        }
        ConstraintsChanges constraintsChanges = (ConstraintsChanges) obj;
        if (Intrinsics.areEqual(this.qqsConstraintsChanges, constraintsChanges.qqsConstraintsChanges) && Intrinsics.areEqual(this.qsConstraintsChanges, constraintsChanges.qsConstraintsChanges) && Intrinsics.areEqual(this.largeScreenConstraintsChanges, constraintsChanges.largeScreenConstraintsChanges)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int i = 0;
        Function1 function1 = this.qqsConstraintsChanges;
        if (function1 == null) {
            hashCode = 0;
        } else {
            hashCode = function1.hashCode();
        }
        int i2 = hashCode * 31;
        Function1 function12 = this.qsConstraintsChanges;
        if (function12 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = function12.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        Function1 function13 = this.largeScreenConstraintsChanges;
        if (function13 != null) {
            i = function13.hashCode();
        }
        return i3 + i;
    }

    public final ConstraintsChanges plus(ConstraintsChanges constraintsChanges) {
        final Function1 function1 = this.qqsConstraintsChanges;
        final Function1 function12 = constraintsChanges.qqsConstraintsChanges;
        if (function1 == null) {
            function1 = function12;
        } else if (function12 != null) {
            function1 = new Function1() { // from class: com.android.systemui.shade.CombinedShadeHeadersConstraintManagerKt$plus$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ConstraintSet constraintSet = (ConstraintSet) obj;
                    Function1.this.invoke(constraintSet);
                    function12.invoke(constraintSet);
                    return Unit.INSTANCE;
                }
            };
        }
        final Function1 function13 = this.qsConstraintsChanges;
        final Function1 function14 = constraintsChanges.qsConstraintsChanges;
        if (function13 == null) {
            function13 = function14;
        } else if (function14 != null) {
            function13 = new Function1() { // from class: com.android.systemui.shade.CombinedShadeHeadersConstraintManagerKt$plus$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ConstraintSet constraintSet = (ConstraintSet) obj;
                    Function1.this.invoke(constraintSet);
                    function14.invoke(constraintSet);
                    return Unit.INSTANCE;
                }
            };
        }
        final Function1 function15 = this.largeScreenConstraintsChanges;
        final Function1 function16 = constraintsChanges.largeScreenConstraintsChanges;
        if (function15 == null) {
            function15 = function16;
        } else if (function16 != null) {
            function15 = new Function1() { // from class: com.android.systemui.shade.CombinedShadeHeadersConstraintManagerKt$plus$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ConstraintSet constraintSet = (ConstraintSet) obj;
                    Function1.this.invoke(constraintSet);
                    function16.invoke(constraintSet);
                    return Unit.INSTANCE;
                }
            };
        }
        return new ConstraintsChanges(function1, function13, function15);
    }

    public final String toString() {
        return "ConstraintsChanges(qqsConstraintsChanges=" + this.qqsConstraintsChanges + ", qsConstraintsChanges=" + this.qsConstraintsChanges + ", largeScreenConstraintsChanges=" + this.largeScreenConstraintsChanges + ")";
    }

    public ConstraintsChanges(Function1 function1, Function1 function12, Function1 function13) {
        this.qqsConstraintsChanges = function1;
        this.qsConstraintsChanges = function12;
        this.largeScreenConstraintsChanges = function13;
    }

    public /* synthetic */ ConstraintsChanges(Function1 function1, Function1 function12, Function1 function13, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : function1, (i & 2) != 0 ? null : function12, (i & 4) != 0 ? null : function13);
    }
}
