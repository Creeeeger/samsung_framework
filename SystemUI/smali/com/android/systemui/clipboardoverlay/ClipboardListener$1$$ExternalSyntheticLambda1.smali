.class public final synthetic Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;

.field public final synthetic f$1:Landroid/content/ClipDescription;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;Landroid/content/ClipDescription;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;->f$1:Landroid/content/ClipDescription;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;->f$1:Landroid/content/ClipDescription;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener;

    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->showCopyToast(Landroid/content/ClipDescription;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string v0, "ClipboardListener"

    .line 18
    .line 19
    const-string/jumbo v1, "showCopyToast exception"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
