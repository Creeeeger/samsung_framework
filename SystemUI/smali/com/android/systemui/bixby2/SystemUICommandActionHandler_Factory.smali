.class public final Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final appControlActionInteractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final deviceControlActionInteractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final musicControlActionInteractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final notificationControlActionInteractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final screenControlActionInteractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final shareViaActionInteractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final subscreenNotificationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->appControlActionInteractorProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->deviceControlActionInteractorProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->musicControlActionInteractorProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->notificationControlActionInteractorProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->screenControlActionInteractorProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->shareViaActionInteractorProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->subscreenNotificationControllerProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;

    .line 2
    .line 3
    move-object v0, v9

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move-object/from16 v7, p6

    .line 11
    .line 12
    move-object/from16 v8, p7

    .line 13
    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 15
    .line 16
    .line 17
    return-object v9
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/bixby2/SystemUICommandActionHandler;
    .locals 10

    .line 1
    new-instance v9, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;

    .line 2
    .line 3
    move-object v0, v9

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move-object/from16 v7, p6

    .line 11
    .line 12
    move-object/from16 v8, p7

    .line 13
    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    .line 15
    .line 16
    .line 17
    return-object v9
.end method


# virtual methods
.method public get()Lcom/android/systemui/bixby2/SystemUICommandActionHandler;
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->appControlActionInteractorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;

    iget-object v0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->deviceControlActionInteractorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;

    iget-object v0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->musicControlActionInteractorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;

    iget-object v0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->notificationControlActionInteractorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;

    iget-object v0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->screenControlActionInteractorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;

    iget-object v0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->shareViaActionInteractorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor;

    iget-object p0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->subscreenNotificationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/bixby2/SystemUICommandActionHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/SystemUICommandActionHandler_Factory;->get()Lcom/android/systemui/bixby2/SystemUICommandActionHandler;

    move-result-object p0

    return-object p0
.end method
