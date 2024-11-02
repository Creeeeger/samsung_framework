.class public final synthetic Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;

.field public final synthetic f$1:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;Landroid/widget/CheckBox;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity$$ExternalSyntheticLambda0;->f$1:Landroid/widget/CheckBox;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity$$ExternalSyntheticLambda0;->f$1:Landroid/widget/CheckBox;

    .line 4
    .line 5
    sget v0, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "disable_dexcompat_restart_dialog"

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    iget p0, p1, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;->mTargetTaskId:I

    .line 27
    .line 28
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->toggleFreeformForDexCompatApp(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
