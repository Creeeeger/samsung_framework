package androidx.picker.features.observable;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.DisposableHandle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class ObservableProperty<T> {
    static final /* synthetic */ KProperty[] $$delegatedProperties;
    private final List<Function2> onAfterChangeListenerList;
    private final List<Function2> onBeforeChangeListenerList;
    private Function1 onBindCallback;
    private final Function1 onUpdated;
    private final MutableState state$delegate;

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(ObservableProperty.class, "state", "getState()Ljava/lang/Object;", 0);
        Reflection.factory.getClass();
        $$delegatedProperties = new KProperty[]{mutablePropertyReference1Impl};
    }

    public ObservableProperty(MutableState mutableState, Function1 function1) {
        this.onUpdated = function1;
        this.state$delegate = mutableState;
        this.onAfterChangeListenerList = new ArrayList();
        this.onBeforeChangeListenerList = new ArrayList();
    }

    private final void afterChange(T t, T t2) {
        Iterator<T> it = this.onAfterChangeListenerList.iterator();
        while (it.hasNext()) {
            ((Function2) it.next()).invoke(t, t2);
        }
    }

    private final boolean beforeChange(T t, T t2) {
        List<Function2> list = this.onBeforeChangeListenerList;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (!((Boolean) ((Function2) it.next()).invoke(t, t2)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static /* synthetic */ DisposableHandle bind$default(ObservableProperty observableProperty, Function1 function1, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                function1 = null;
            }
            return observableProperty.bind(function1);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: bind");
    }

    /* renamed from: bind$lambda-0 */
    public static final void m34bind$lambda0(ObservableProperty observableProperty, Function1 function1) {
        if (Intrinsics.areEqual(observableProperty.onBindCallback, function1)) {
            observableProperty.setOnBindCallback(null);
        }
    }

    /* renamed from: registerAfterChangeUpdateListener$lambda-2 */
    public static final void m35registerAfterChangeUpdateListener$lambda2(ObservableProperty observableProperty, Function2 function2) {
        observableProperty.onAfterChangeListenerList.remove(function2);
    }

    /* renamed from: registerBeforeChangeUpdateListener$lambda-1 */
    public static final void m36registerBeforeChangeUpdateListener$lambda1(ObservableProperty observableProperty, Function2 function2) {
        observableProperty.onBeforeChangeListenerList.remove(function2);
    }

    private final void setOnBindCallback(Function1 function1) {
        this.onBindCallback = function1;
        if (function1 != null) {
            function1.invoke(getState());
        }
    }

    public final DisposableHandle bind(Function1 function1) {
        setOnBindCallback(function1);
        return new ObservableProperty$$ExternalSyntheticLambda0(this, function1, 2);
    }

    public final T getState() {
        MutableState mutableState = this.state$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (T) mutableState.getValue();
    }

    public final T getValue(Object obj, KProperty kProperty) {
        return getState();
    }

    public final DisposableHandle registerAfterChangeUpdateListener(Function2 function2) {
        this.onAfterChangeListenerList.add(function2);
        return new ObservableProperty$$ExternalSyntheticLambda0(this, function2, 1);
    }

    public final DisposableHandle registerBeforeChangeUpdateListener(Function2 function2) {
        this.onBeforeChangeListenerList.add(function2);
        return new ObservableProperty$$ExternalSyntheticLambda0(this, function2, 0);
    }

    public final void setState(T t) {
        MutableState mutableState = this.state$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        mutableState.setValue(t);
    }

    public final void setValue(T t) {
        if (!Intrinsics.areEqual(getState(), t)) {
            if (!beforeChange(getState(), t)) {
                return;
            }
            T state = getState();
            setState(t);
            afterChange(state, t);
            Function1 function1 = this.onUpdated;
            if (function1 != null) {
                function1.invoke(t);
            }
        }
        Function1 function12 = this.onBindCallback;
        if (function12 != null) {
            function12.invoke(t);
        }
    }

    public final void setValueSilence(T t) {
        setState(t);
        setValue(t);
    }

    public /* synthetic */ ObservableProperty(MutableState mutableState, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mutableState, (i & 2) != 0 ? null : function1);
    }

    public final void setValue(Object obj, KProperty kProperty, T t) {
        setValue(t);
    }
}
