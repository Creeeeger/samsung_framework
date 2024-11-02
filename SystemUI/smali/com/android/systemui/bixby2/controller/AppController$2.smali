.class Lcom/android/systemui/bixby2/controller/AppController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bixby2/controller/AppController;->openRecentsApp(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/AppController;

.field final synthetic val$mInstrumentation:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/AppController;Landroid/app/Instrumentation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$2;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/AppController$2;->val$mInstrumentation:Landroid/app/Instrumentation;

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
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController$2;->val$mInstrumentation:Landroid/app/Instrumentation;

    .line 7
    .line 8
    const/16 v0, 0xbb

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method
