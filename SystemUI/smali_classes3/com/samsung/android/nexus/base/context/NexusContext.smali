.class public final Lcom/samsung/android/nexus/base/context/NexusContext;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

.field public final mContext:Landroid/content/Context;

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mWidth:I

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mHeight:I

    .line 13
    .line 14
    const-string v0, "NexusContext"

    .line 15
    .line 16
    const-string v1, "NexusContext() : create NexusContext"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance p1, Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    .line 29
    .line 30
    return-void
.end method
