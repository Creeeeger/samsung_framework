.class public final Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public final soundCraftSettings:Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;->soundCraftSettings:Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final updateBudsInfo(Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/UpdateInfoRequester;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;->soundCraftSettings:Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/UpdateInfoRequester;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->bindService()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
