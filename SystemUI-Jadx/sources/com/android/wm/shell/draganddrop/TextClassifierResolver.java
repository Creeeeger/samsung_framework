package com.android.wm.shell.draganddrop;

import android.content.ClipData;
import android.content.Context;
import android.service.textclassifier.TextClassifierService;
import android.text.TextUtils;
import android.util.Slog;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassificationManager;
import com.android.wm.shell.draganddrop.AppResultFactory;
import com.android.wm.shell.draganddrop.ExecutableAppHolder;
import java.util.Optional;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TextClassifierResolver extends BaseResolver {
    public int mCallingUserId;

    public TextClassifierResolver(Context context, ExecutableAppHolder.MultiInstanceBlockList multiInstanceBlockList) {
        super(context, multiInstanceBlockList);
    }

    public static Object runOnBlocking(TextClassifierResolver$$ExternalSyntheticLambda0 textClassifierResolver$$ExternalSyntheticLambda0) {
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        Object obj = newCachedThreadPool.submit(textClassifierResolver$$ExternalSyntheticLambda0).get(3L, TimeUnit.SECONDS);
        newCachedThreadPool.shutdown();
        return obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.wm.shell.draganddrop.SingleIntentAppResult getResultFromTextClassification(android.view.textclassifier.TextClassification r11, com.android.wm.shell.draganddrop.AppResultFactory.ResultExtra r12, boolean r13) {
        /*
            r10 = this;
            java.util.List r11 = r11.getActions()
            r0 = 0
            if (r11 == 0) goto L7e
            boolean r1 = r11.isEmpty()
            if (r1 == 0) goto Lf
            goto L7e
        Lf:
            r1 = 0
            java.lang.Object r11 = r11.get(r1)
            android.app.RemoteAction r11 = (android.app.RemoteAction) r11
            android.app.PendingIntent r1 = r11.getActionIntent()
            if (r1 != 0) goto L1d
            return r0
        L1d:
            android.content.Intent r3 = r1.getIntent()
            if (r3 != 0) goto L24
            return r0
        L24:
            java.lang.String r1 = "android.intent.action.TRANSLATE"
            java.lang.String r2 = r3.getAction()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L31
            return r0
        L31:
            boolean r1 = com.android.wm.shell.draganddrop.BaseResolver.DEBUG
            if (r1 == 0) goto L49
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "updateByTextClassifying: intent in TextClassification="
            r1.<init>(r2)
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = r10.TAG
            android.util.Slog.d(r2, r1)
        L49:
            int r1 = r10.mCallingUserId
            java.util.ArrayList r4 = r10.mTempList
            r10.resolveActivities(r3, r1, r4, r12)
            boolean r12 = r4.isEmpty()
            if (r12 == 0) goto L57
            return r0
        L57:
            java.lang.String r12 = com.android.wm.shell.draganddrop.BaseResolver.calculateContentType(r3)
            if (r12 == 0) goto L5e
            goto L68
        L5e:
            java.lang.CharSequence r12 = r11.getContentDescription()
            if (r12 == 0) goto L6a
            java.lang.String r12 = r12.toString()
        L68:
            r7 = r12
            goto L6b
        L6a:
            r7 = r0
        L6b:
            com.android.wm.shell.draganddrop.SingleIntentAppResult r12 = new com.android.wm.shell.draganddrop.SingleIntentAppResult
            com.android.wm.shell.draganddrop.ExecutableAppHolder$MultiInstanceBlockList r5 = r10.mMultiInstanceBlockList
            com.android.wm.shell.draganddrop.ExecutableAppHolder$MultiInstanceAllowList r6 = r10.mMultiInstanceAllowList
            r8 = 1
            if (r13 == 0) goto L78
            android.graphics.drawable.Icon r0 = r11.getIcon()
        L78:
            r9 = r0
            r2 = r12
            r2.<init>(r3, r4, r5, r6, r7, r8, r9)
            return r12
        L7e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.draganddrop.TextClassifierResolver.getResultFromTextClassification(android.view.textclassifier.TextClassification, com.android.wm.shell.draganddrop.AppResultFactory$ResultExtra, boolean):com.android.wm.shell.draganddrop.SingleIntentAppResult");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.wm.shell.draganddrop.TextClassifierResolver$$ExternalSyntheticLambda0] */
    @Override // com.android.wm.shell.draganddrop.Resolver
    public final Optional makeFrom(final ClipData clipData, int i, final AppResultFactory.ResultExtra resultExtra) {
        String str = this.TAG;
        try {
            return (Optional) runOnBlocking(new Callable() { // from class: com.android.wm.shell.draganddrop.TextClassifierResolver$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    TextClassifierResolver textClassifierResolver = TextClassifierResolver.this;
                    textClassifierResolver.getClass();
                    ClipData clipData2 = clipData;
                    if (clipData2.getItemCount() == 0) {
                        return Optional.empty();
                    }
                    CharSequence text = clipData2.getItemAt(0).getText();
                    boolean z = BaseResolver.DEBUG;
                    String str2 = textClassifierResolver.TAG;
                    if (text == null) {
                        if (z) {
                            Slog.d(str2, "updateByTextClassifying: There is Null text.");
                        }
                        return Optional.empty();
                    }
                    String replaceAll = text.toString().replaceAll("\u0000", "");
                    if (TextUtils.isEmpty(replaceAll)) {
                        if (z) {
                            Slog.d(str2, "updateByTextClassifying: There is no text.");
                        }
                        return Optional.empty();
                    }
                    textClassifierResolver.mCallingUserId = clipData2.getCallingUserId();
                    TextClassification.Request build = new TextClassification.Request.Builder(replaceAll, 0, replaceAll.length()).build();
                    Context context = textClassifierResolver.mContext;
                    TextClassification classifyText = TextClassifierService.getDefaultTextClassifierImplementation(context).classifyText(build);
                    AppResultFactory.ResultExtra resultExtra2 = resultExtra;
                    SingleIntentAppResult resultFromTextClassification = textClassifierResolver.getResultFromTextClassification(classifyText, resultExtra2, false);
                    if (resultFromTextClassification == null) {
                        resultFromTextClassification = textClassifierResolver.getResultFromTextClassification(((TextClassificationManager) context.getSystemService("textclassification")).getTextClassifier(1).classifyText(build), resultExtra2, true);
                        Slog.d(str2, "updateByTextClassifying: Use System type");
                    } else {
                        Slog.d(str2, "updateByTextClassifying: Use Default System type");
                    }
                    if (resultFromTextClassification != null) {
                        return Optional.of(resultFromTextClassification);
                    }
                    return Optional.empty();
                }
            });
        } catch (InterruptedException | ExecutionException e) {
            Slog.d(str, "failed to update from text classifier." + e.getMessage());
            return Optional.empty();
        } catch (TimeoutException unused) {
            Slog.d(str, "failed to update from text classifier due to timeout.");
            return Optional.empty();
        }
    }
}
