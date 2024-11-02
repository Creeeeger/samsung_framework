.class public final Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/wallpaper/log/WallpaperLogger;


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/systemui/log/LogBufferFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p3, p2, p1, v0}, Lcom/android/systemui/log/LogBufferFactory;->create(ILjava/lang/String;Z)Lcom/android/systemui/log/LogBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 5
    .line 6
    new-instance v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl$log$2;

    .line 7
    .line 8
    invoke-direct {v1, p2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl$log$2;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
