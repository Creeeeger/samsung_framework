.class public Lcom/sec/ims/options/CapabilityListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityListener"


# instance fields
.field private final EVT_CAP_CHANGED:I

.field private final EVT_CAP_PUBLISHED:I

.field private final EVT_MULTIPLE_CAP_CHANGED:I

.field private final EVT_OWN_CAP_CHANGED:I

.field callback:Lcom/sec/ims/options/ICapabilityServiceEventListener;

.field mHandler:Landroid/os/Handler;

.field protected mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/sec/ims/options/CapabilityListener;->EVT_OWN_CAP_CHANGED:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/sec/ims/options/CapabilityListener;->EVT_MULTIPLE_CAP_CHANGED:I

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    iput v0, p0, Lcom/sec/ims/options/CapabilityListener;->EVT_CAP_CHANGED:I

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lcom/sec/ims/options/CapabilityListener;->EVT_CAP_PUBLISHED:I

    .line 15
    .line 16
    new-instance v0, Lcom/sec/ims/options/CapabilityListener$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/sec/ims/options/CapabilityListener$1;-><init>(Lcom/sec/ims/options/CapabilityListener;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/sec/ims/options/CapabilityListener;->callback:Lcom/sec/ims/options/ICapabilityServiceEventListener;

    .line 22
    .line 23
    new-instance v0, Lcom/sec/ims/options/CapabilityListener$2;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/sec/ims/options/CapabilityListener$2;-><init>(Lcom/sec/ims/options/CapabilityListener;Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/sec/ims/options/CapabilityListener;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCapabilityAndAvailabilityPublished(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onMultipleCapabilitiesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/options/Capabilities;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onOwnCapabilitiesChanged()V
    .locals 0

    .line 1
    return-void
.end method
