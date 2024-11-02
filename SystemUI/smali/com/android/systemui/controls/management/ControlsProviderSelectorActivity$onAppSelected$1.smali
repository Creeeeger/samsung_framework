.class public final Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onAppSelected$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $appName:Ljava/lang/CharSequence;

.field public final synthetic $serviceInfo:Lcom/android/systemui/controls/ControlsServiceInfo;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;Lcom/android/systemui/controls/ControlsServiceInfo;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onAppSelected$1;->this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onAppSelected$1;->$serviceInfo:Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onAppSelected$1;->$appName:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onAppSelected$1;->this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onAppSelected$1;->$serviceInfo:Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast p1, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->addAuthorizedPanels(Ljava/util/Set;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onAppSelected$1;->$appName:Ljava/lang/CharSequence;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onAppSelected$1;->$serviceInfo:Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 37
    .line 38
    invoke-direct {p1, v0, v1}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onAppSelected$1;->this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 44
    .line 45
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    .line 56
    .line 57
    check-cast p1, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;->setSelectedComponent(Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onAppSelected$1;->this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->animateExitAndFinish$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onAppSelected$1;->this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    new-instance v0, Landroid/content/Intent;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-class v2, Lcom/android/systemui/controls/ui/ControlsActivity;

    .line 79
    .line 80
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    new-array v1, v1, [Landroid/util/Pair;

    .line 85
    .line 86
    invoke-static {p1, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onAppSelected$1;->this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    .line 98
    .line 99
    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->dialog:Landroid/app/Dialog;

    .line 101
    .line 102
    return-void
.end method
