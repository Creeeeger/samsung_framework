.class public final Lcom/android/systemui/flags/ServerFlagReaderImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/flags/ServerFlagReader;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final deviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final isTestHarness:Z

.field public final listeners:Ljava/util/List;

.field public final namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/util/DeviceConfigProxy;Ljava/util/concurrent/Executor;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->namespace:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->deviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->executor:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->isTestHarness:Z

    .line 11
    .line 12
    const-string p1, "ServerFlagReader"

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->listeners:Ljava/util/List;

    .line 22
    .line 23
    new-instance p1, Lcom/android/systemui/flags/ServerFlagReaderImpl$onPropertiesChangedListener$1;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/android/systemui/flags/ServerFlagReaderImpl$onPropertiesChangedListener$1;-><init>(Lcom/android/systemui/flags/ServerFlagReaderImpl;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
