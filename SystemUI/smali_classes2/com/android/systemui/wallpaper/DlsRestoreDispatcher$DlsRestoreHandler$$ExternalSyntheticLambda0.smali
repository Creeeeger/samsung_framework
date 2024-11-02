.class public final synthetic Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;->this$0:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;->mOnRestoreDlsListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v0, "onDlsRestored reason = "

    .line 11
    .line 12
    const-string v1, "RESTORE_DLS_RESULT_SUCCESS"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
