package com.android.systemui.statusbar.phone;

import android.view.View;
import com.android.systemui.R;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SystemUIDialog$$ExternalSyntheticLambda3 implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        if (((View) obj).getTag(R.id.tag_dialog_background) != null) {
            return true;
        }
        return false;
    }
}
