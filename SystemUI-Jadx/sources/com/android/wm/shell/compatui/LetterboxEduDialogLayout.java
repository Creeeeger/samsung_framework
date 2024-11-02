package com.android.wm.shell.compatui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.systemui.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class LetterboxEduDialogLayout extends ConstraintLayout implements DialogContainerSupplier {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Drawable mBackgroundDim;
    public View mDialogContainer;
    public TextView mDialogTitle;

    public LetterboxEduDialogLayout(Context context) {
        this(context, null);
    }

    @Override // com.android.wm.shell.compatui.DialogContainerSupplier
    public final Drawable getBackgroundDimDrawable() {
        return this.mBackgroundDim;
    }

    @Override // com.android.wm.shell.compatui.DialogContainerSupplier
    public final View getDialogContainerView() {
        return this.mDialogContainer;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mDialogContainer = findViewById(R.id.letterbox_education_dialog_container);
        this.mDialogTitle = (TextView) findViewById(R.id.letterbox_education_dialog_title);
        Drawable mutate = getBackground().mutate();
        this.mBackgroundDim = mutate;
        mutate.setAlpha(0);
    }

    public final void setDismissOnClickListener(Runnable runnable) {
        View.OnClickListener onClickListener;
        LetterboxEduDialogLayout$$ExternalSyntheticLambda1 letterboxEduDialogLayout$$ExternalSyntheticLambda1 = null;
        if (runnable == null) {
            onClickListener = null;
        } else {
            final LetterboxEduWindowManager$$ExternalSyntheticLambda0 letterboxEduWindowManager$$ExternalSyntheticLambda0 = (LetterboxEduWindowManager$$ExternalSyntheticLambda0) runnable;
            onClickListener = new View.OnClickListener() { // from class: com.android.wm.shell.compatui.LetterboxEduDialogLayout$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Runnable runnable2 = letterboxEduWindowManager$$ExternalSyntheticLambda0;
                    int i = LetterboxEduDialogLayout.$r8$clinit;
                    runnable2.run();
                }
            };
        }
        findViewById(R.id.letterbox_education_dialog_dismiss_button).setOnClickListener(onClickListener);
        setOnClickListener(onClickListener);
        View view = this.mDialogContainer;
        if (runnable != null) {
            letterboxEduDialogLayout$$ExternalSyntheticLambda1 = new LetterboxEduDialogLayout$$ExternalSyntheticLambda1();
        }
        view.setOnClickListener(letterboxEduDialogLayout$$ExternalSyntheticLambda1);
    }

    public LetterboxEduDialogLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LetterboxEduDialogLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public LetterboxEduDialogLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
