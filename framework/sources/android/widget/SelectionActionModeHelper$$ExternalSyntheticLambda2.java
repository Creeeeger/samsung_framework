package android.widget;

import android.widget.SelectionActionModeHelper;
import java.util.function.Supplier;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes4.dex */
public final /* synthetic */ class SelectionActionModeHelper$$ExternalSyntheticLambda2 implements Supplier {
    public final /* synthetic */ SelectionActionModeHelper.TextClassificationHelper f$0;

    public /* synthetic */ SelectionActionModeHelper$$ExternalSyntheticLambda2(SelectionActionModeHelper.TextClassificationHelper textClassificationHelper) {
        this.f$0 = textClassificationHelper;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f$0.getOriginalSelection();
    }
}
