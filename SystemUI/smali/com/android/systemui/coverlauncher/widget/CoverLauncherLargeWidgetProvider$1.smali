.class public final Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;

.field public final synthetic val$intent:Landroid/content/Intent;

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider$1;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider$1;->val$packageName:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider$1;->val$intent:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const-string v0, "CoverLauncherWidgetProvider"

    .line 2
    .line 3
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider$1;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->mCoverLauncherPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider$1;->val$packageName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider$1;->val$intent:Landroid/content/Intent;

    .line 20
    .line 21
    const-string v4, "key_profile_id"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-interface {v1, v2, v0, v3}, Landroid/app/IActivityTaskManager;->startActivityForCoverLauncherAsUser(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "Failed to launch package "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider$1;->val$packageName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method
