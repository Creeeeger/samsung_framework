package com.android.systemui.clipboardoverlay;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ClipboardOverlayUtils {
    public final TextClassifier mTextClassifier;

    public ClipboardOverlayUtils(TextClassificationManager textClassificationManager) {
        this.mTextClassifier = textClassificationManager.getTextClassifier();
    }
}
