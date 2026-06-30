.class public final synthetic Lcom/google/android/gms/internal/measurement/zzkj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/measurement/zzkk;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzkk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkj;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkj;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkk;->zzc(Lcom/google/android/gms/internal/measurement/zzkk;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
