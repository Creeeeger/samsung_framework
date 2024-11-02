.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$3;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$3;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mExternalChange:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    if-eq v2, v0, :cond_2

    .line 8
    .line 9
    const/16 v3, 0xa

    .line 10
    .line 11
    if-eq v2, v3, :cond_0

    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$3;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 18
    .line 19
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v0, v1

    .line 25
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/SubscreenBrightnessController;->updateHighBrightnessModeEnter(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$3;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 30
    .line 31
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 38
    .line 39
    invoke-static {p0, v0}, Lcom/android/systemui/qp/SubscreenBrightnessController;->-$$Nest$mupdateSlider(Lcom/android/systemui/qp/SubscreenBrightnessController;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    :goto_1
    sput-boolean v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mExternalChange:Z

    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    sput-boolean v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mExternalChange:Z

    .line 47
    .line 48
    throw p0
.end method
