.class public final Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field public final mActivityStarterWrapper:Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;

.field public final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

.field public mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mActivityStarterWrapper:Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;

    .line 9
    .line 10
    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onPress()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 2
    .line 3
    const-string v1, "SideKeyActionViewModel"

    .line 4
    .line 5
    const-string v2, "Running side key settings activity"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    .line 11
    .line 12
    const-string v4, "611"

    .line 13
    .line 14
    const-string v5, "6111"

    .line 15
    .line 16
    const-string v6, "Side key settings"

    .line 17
    .line 18
    const-wide/16 v7, 0x8

    .line 19
    .line 20
    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    const-string v1, "com.samsung.android.intent.action.SIDE_KEY_SETTINGS"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/high16 v1, 0x10000000

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mActivityStarterWrapper:Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 44
    .line 45
    invoke-interface {p0, v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 2
    .line 3
    return-void
.end method
