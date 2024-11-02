.class public final Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;
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
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final deviceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;->deviceControllerProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/DeviceController;)Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/DeviceController;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;->deviceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-static {v0, p0}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/DeviceController;)Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;->get()Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;

    move-result-object p0

    return-object p0
.end method
