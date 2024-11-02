.class Lcom/android/systemui/bixby2/controller/ScreenController$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bixby2/controller/ScreenController;->sendBackKey(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

.field final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/ScreenController;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController$3;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/bixby2/controller/ScreenController$3;->val$displayId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v1, 0x3e8

    .line 4
    .line 5
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/systemui/bixby2/controller/ScreenController$3;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

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
    const/4 v8, 0x4

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
    iget v2, v0, Lcom/android/systemui/bixby2/controller/ScreenController$3;->val$displayId:I

    .line 30
    .line 31
    move/from16 v16, v2

    .line 32
    .line 33
    move-object v2, v15

    .line 34
    move-object v0, v15

    .line 35
    move/from16 v15, v16

    .line 36
    .line 37
    invoke-direct/range {v2 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 41
    .line 42
    .line 43
    move-object/from16 v0, p0

    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/systemui/bixby2/controller/ScreenController$3;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmInstrumentation(Lcom/android/systemui/bixby2/controller/ScreenController;)Landroid/app/Instrumentation;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v15, Landroid/view/KeyEvent;

    .line 52
    .line 53
    const-wide/16 v3, 0x0

    .line 54
    .line 55
    const-wide/16 v5, 0x0

    .line 56
    .line 57
    const/4 v7, 0x1

    .line 58
    const/4 v8, 0x4

    .line 59
    const/4 v9, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v11, -0x1

    .line 62
    const/4 v12, 0x0

    .line 63
    const/16 v13, 0x48

    .line 64
    .line 65
    const/4 v14, 0x0

    .line 66
    iget v0, v0, Lcom/android/systemui/bixby2/controller/ScreenController$3;->val$displayId:I

    .line 67
    .line 68
    move-object v2, v15

    .line 69
    move-object/from16 v17, v15

    .line 70
    .line 71
    move v15, v0

    .line 72
    invoke-direct/range {v2 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    .line 73
    .line 74
    .line 75
    move-object/from16 v0, v17

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method
