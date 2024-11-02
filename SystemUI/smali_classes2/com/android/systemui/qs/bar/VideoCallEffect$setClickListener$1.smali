.class public final Lcom/android/systemui/qs/bar/VideoCallEffect$setClickListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $sendEvent:Lkotlin/jvm/functions/Function1;

.field public final synthetic this$0:Lcom/android/systemui/qs/bar/VideoCallEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VideoCallEffect;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/bar/VideoCallEffect;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect$setClickListener$1;->this$0:Lcom/android/systemui/qs/bar/VideoCallEffect;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/bar/VideoCallEffect$setClickListener$1;->$sendEvent:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "VideoCallEffect"

    .line 2
    .line 3
    const-string v0, "onClicked"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect$setClickListener$1;->this$0:Lcom/android/systemui/qs/bar/VideoCallEffect;

    .line 9
    .line 10
    sget-object v0, Lcom/android/systemui/qs/bar/VideoCallEffect;->URI_VSET_APP_STATUS_DATA:Landroid/net/Uri;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v1, "intentfilter.samsung.vtcamerasetting.openmenu"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "com.samsung.android.vtcamerasettings"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object v1, p1, Lcom/android/systemui/qs/bar/VideoCallEffect;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 28
    .line 29
    invoke-interface {v1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    .line 30
    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/systemui/qs/bar/VideoCallEffect;->context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect$setClickListener$1;->$sendEvent:Lkotlin/jvm/functions/Function1;

    .line 38
    .line 39
    const-string p1, "QPPE1030"

    .line 40
    .line 41
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-void
.end method
