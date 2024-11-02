package android.widget;

import java.util.function.Supplier;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes4.dex */
public final /* synthetic */ class SelectionActionModeHelper$$ExternalSyntheticLambda3 implements Supplier {
    public final /* synthetic */ TextView f$0;

    public /* synthetic */ SelectionActionModeHelper$$ExternalSyntheticLambda3(TextView textView) {
        this.f$0 = textView;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f$0.getTextClassificationSession();
    }
}
