.class public interface abstract Lcom/android/systemui/statusbar/NotificationShelfController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/NotificationShelfController$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/NotificationShelfController$Companion;->$$INSTANCE:Lcom/android/systemui/statusbar/NotificationShelfController$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/android/systemui/statusbar/NotificationShelfController;->Companion:Lcom/android/systemui/statusbar/NotificationShelfController$Companion;

    .line 4
    .line 5
    return-void
.end method

.method public static assertRefactorFlagDisabled()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/NotificationShelfController;->Companion:Lcom/android/systemui/statusbar/NotificationShelfController$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 7
    .line 8
    return-void
.end method

.method public static checkRefactorFlagEnabled()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/NotificationShelfController;->Companion:Lcom/android/systemui/statusbar/NotificationShelfController$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
.end method

.method public abstract canModifyColorOfNotifications()Z
.end method

.method public abstract getIntrinsicHeight()I
.end method

.method public abstract getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.end method

.method public abstract getView()Lcom/android/systemui/statusbar/NotificationShelf;
.end method

.method public abstract setOnClickListener(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$bindController$1;)V
.end method
