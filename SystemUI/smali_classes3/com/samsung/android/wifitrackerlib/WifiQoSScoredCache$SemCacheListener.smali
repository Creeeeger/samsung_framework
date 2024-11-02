.class public abstract Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public abstract networkCacheUpdated()V
.end method
