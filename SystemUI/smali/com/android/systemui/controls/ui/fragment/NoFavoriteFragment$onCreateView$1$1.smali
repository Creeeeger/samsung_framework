.class public final Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $this_apply:Landroid/widget/Button;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;Landroid/widget/Button;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->$this_apply:Landroid/widget/Button;

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
    .locals 1

    .line 1
    const-string p1, "NoFavoriteFragment"

    .line 2
    .line 3
    const-string/jumbo v0, "startProviderSelectorActivity"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 16
    .line 17
    sget-object v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$AddDevices;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$AddDevices;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->$this_apply:Landroid/widget/Button;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-class v0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    .line 33
    .line 34
    check-cast p1, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;

    .line 35
    .line 36
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
