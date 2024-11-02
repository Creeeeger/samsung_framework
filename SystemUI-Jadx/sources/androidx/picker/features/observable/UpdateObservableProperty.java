package androidx.picker.features.observable;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class UpdateObservableProperty<T, R> extends ObservableProperty<R> {
    private final UpdateMutableState mutableState;

    public /* synthetic */ UpdateObservableProperty(UpdateMutableState updateMutableState, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(updateMutableState, (i & 2) != 0 ? null : function1);
    }

    public final void update(T t) {
        this.mutableState.base = t;
    }

    public UpdateObservableProperty(UpdateMutableState updateMutableState, Function1 function1) {
        super(updateMutableState, function1);
        this.mutableState = updateMutableState;
    }
}
