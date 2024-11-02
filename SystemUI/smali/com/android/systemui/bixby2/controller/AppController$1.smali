.class Lcom/android/systemui/bixby2/controller/AppController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bixby2/controller/AppController;->launchApplication(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/AppController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$coverFlexMode:Z

.field final synthetic val$packageInfoBixby:Lcom/android/systemui/bixby2/util/PackageInfoBixby;

.field final synthetic val$pm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/AppController;Landroid/os/PowerManager;Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$1;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/AppController$1;->val$pm:Landroid/os/PowerManager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/bixby2/controller/AppController$1;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/bixby2/controller/AppController$1;->val$packageInfoBixby:Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/android/systemui/bixby2/controller/AppController$1;->val$coverFlexMode:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/AppController$1;->val$pm:Landroid/os/PowerManager;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const/high16 v3, 0x10000000

    .line 8
    .line 9
    const-string v4, "[Brief] Wakeup only"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/AppController$1;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmLauncher(Lcom/android/systemui/bixby2/controller/AppController;)Lcom/android/systemui/bixby2/util/ActivityLauncher;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/AppController$1;->val$context:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/AppController$1;->val$packageInfoBixby:Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    .line 23
    .line 24
    iget-object v3, v0, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v4, v0, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName:Ljava/lang/String;

    .line 27
    .line 28
    iget v5, v0, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->taskId:I

    .line 29
    .line 30
    iget-boolean v6, p0, Lcom/android/systemui/bixby2/controller/AppController$1;->val$coverFlexMode:Z

    .line 31
    .line 32
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/bixby2/util/ActivityLauncher;->startActivityInBixby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method
