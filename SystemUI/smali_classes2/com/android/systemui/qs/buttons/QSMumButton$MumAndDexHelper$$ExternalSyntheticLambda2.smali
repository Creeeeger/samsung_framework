.class public final synthetic Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

.field public final synthetic f$1:Lcom/samsung/android/desktopmode/SemDesktopModeState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateMumSwitchVisibility()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
