package androidx.picker.features.observable;

import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DisposableHandle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class ObservableProperty$$ExternalSyntheticLambda0 implements DisposableHandle {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ObservableProperty f$0;
    public final /* synthetic */ Function f$1;

    public /* synthetic */ ObservableProperty$$ExternalSyntheticLambda0(ObservableProperty observableProperty, Function function, int i) {
        this.$r8$classId = i;
        this.f$0 = observableProperty;
        this.f$1 = function;
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public final void dispose() {
        int i = this.$r8$classId;
        ObservableProperty observableProperty = this.f$0;
        Function function = this.f$1;
        switch (i) {
            case 0:
                ObservableProperty.$r8$lambda$7dofohOnVs69UusiriMchHnjJxA(observableProperty, (Function2) function);
                return;
            case 1:
                ObservableProperty.m33$r8$lambda$nhB4xv4hhRe24EAG1_PH2Ur9M(observableProperty, (Function2) function);
                return;
            default:
                ObservableProperty.$r8$lambda$25KHQfzRvpJOX5qa7r8uBNEOxBY(observableProperty, (Function1) function);
                return;
        }
    }
}
