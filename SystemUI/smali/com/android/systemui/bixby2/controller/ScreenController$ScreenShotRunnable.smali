.class Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bixby2/controller/ScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenShotRunnable"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/ScreenController;


# direct methods
.method public static synthetic $r8$lambda$XisfYXGZtgMV43yR0NKEe_MUYa8(Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;->lambda$run$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/bixby2/controller/ScreenController;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;->mIntent:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;->mIntent:Landroid/content/Intent;

    .line 4
    .line 5
    const-string v1, "com.samsung.permission.CAPTURE"

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmTryCount(Lcom/android/systemui/bixby2/controller/ScreenController;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xf

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmCurBixbyState(Lcom/android/systemui/bixby2/controller/ScreenController;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmTryCount(Lcom/android/systemui/bixby2/controller/ScreenController;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmScreenCaptureHandler(Lcom/android/systemui/bixby2/controller/ScreenController;)Landroid/os/Handler;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-wide/16 v2, 0x12c

    .line 32
    .line 33
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 37
    .line 38
    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmTryCount(Lcom/android/systemui/bixby2/controller/ScreenController;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v1

    .line 43
    invoke-static {p0, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fputmTryCount(Lcom/android/systemui/bixby2/controller/ScreenController;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmScreenCaptureHandler(Lcom/android/systemui/bixby2/controller/ScreenController;)Landroid/os/Handler;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;)V

    .line 56
    .line 57
    .line 58
    const-wide/16 v2, 0x1f4

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fputmScreenShotRunnable(Lcom/android/systemui/bixby2/controller/ScreenController;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-static {p0, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fputmTryCount(Lcom/android/systemui/bixby2/controller/ScreenController;I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method
