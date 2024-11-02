.class Lcom/android/systemui/bixby2/controller/ScreenController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bixby2/controller/ScreenController;->startSubHomeActivity(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/ScreenController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/ScreenController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController$1;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v1, 0x5dc

    .line 4
    .line 5
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/systemui/bixby2/controller/ScreenController$1;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmInstrumentation(Lcom/android/systemui/bixby2/controller/ScreenController;)Landroid/app/Instrumentation;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v15, Landroid/view/KeyEvent;

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    const-wide/16 v5, 0x0

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x3

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v10, 0x0

    .line 24
    const/4 v11, -0x1

    .line 25
    const/4 v12, 0x0

    .line 26
    const/16 v13, 0x48

    .line 27
    .line 28
    const/4 v14, 0x0

    .line 29
    const/16 v16, 0x1

    .line 30
    .line 31
    move-object v2, v15

    .line 32
    move-object v0, v15

    .line 33
    move/from16 v15, v16

    .line 34
    .line 35
    invoke-direct/range {v2 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 39
    .line 40
    .line 41
    move-object/from16 v0, p0

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/systemui/bixby2/controller/ScreenController$1;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmInstrumentation(Lcom/android/systemui/bixby2/controller/ScreenController;)Landroid/app/Instrumentation;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v15, Landroid/view/KeyEvent;

    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    const-wide/16 v4, 0x0

    .line 54
    .line 55
    const/4 v6, 0x1

    .line 56
    const/4 v7, 0x3

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v10, -0x1

    .line 60
    const/4 v11, 0x0

    .line 61
    const/16 v12, 0x48

    .line 62
    .line 63
    const/4 v13, 0x0

    .line 64
    const/4 v14, 0x1

    .line 65
    move-object v1, v15

    .line 66
    invoke-direct/range {v1 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v15}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method
