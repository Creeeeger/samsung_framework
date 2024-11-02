.class final Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController_Factory;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController_Factory;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController_Factory;

    .line 2
    .line 3
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController_Factory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController_Factory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController_Factory;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
