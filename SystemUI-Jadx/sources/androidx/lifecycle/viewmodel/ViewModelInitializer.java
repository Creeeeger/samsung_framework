package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ViewModelInitializer {
    public final Class clazz;
    public final Function1 initializer;

    public ViewModelInitializer(Class<ViewModel> cls, Function1 function1) {
        this.clazz = cls;
        this.initializer = function1;
    }
}
