import { createContext, useContext, useState, useCallback, createElement, type ReactNode } from 'react'

export type Lang = 'ko' | 'en' | 'zh' | 'ru' | 'de' | 'fr' | 'vi'

export const LANGS: Lang[] = ['ko', 'en', 'zh', 'ru', 'de', 'fr', 'vi']

type Dict = Record<string, Partial<Record<Lang, string>>>

const DICT: Dict = {
  'intro.status_init':          { ko:'시스템 초기화 중…',            en:'Initializing system…',                     zh:'系统初始化中…',        ru:'Инициализация системы…',                    de:'System wird initialisiert…',               fr:'Initialisation du système…',               vi:'Đang khởi tạo hệ thống…' },
  'intro.status_ready':         { ko:'시스템 준비',                  en:'System ready',                             zh:'系统就绪',            ru:'Система готова',                           de:'System bereit',                            fr:'Système prêt',                             vi:'Hệ thống sẵn sàng' },
  'intro.proxy_mode':           { ko:'프록시',    en:'proxy',    zh:'代理',    ru:'прокси',   de:'Proxy',    fr:'proxy',    vi:'proxy' },
  'intro.offline_mode':         { ko:'오프라인',  en:'offline',  zh:'离线',    ru:'оффлайн',  de:'Offline',  fr:'hors ligne', vi:'ngoại tuyến' },
  'admin.dashboard':            { ko:'대시보드',   en:'Dashboard',    zh:'仪表板',    ru:'Дашборд',               de:'Dashboard',        fr:'Tableau de bord',  vi:'Bảng điều khiển' },
  'admin.health':               { ko:'헬스체크',   en:'Health',       zh:'健康检查',  ru:'Мониторинг',            de:'Systemstatus',     fr:'Santé',            vi:'Kiểm tra hệ thống' },
  'admin.logs':                 { ko:'요청 로그',  en:'Request Log',  zh:'请求日志',  ru:'Журнал запросов',       de:'Protokoll',        fr:'Journal',          vi:'Nhật ký yêu cầu' },
  'admin.db':                   { ko:'데이터베이스', en:'Database',   zh:'数据库',    ru:'База данных',           de:'Datenbank',        fr:'Base de données',  vi:'Cơ sở dữ liệu' },
  'admin.fixtures':             { ko:'픽스처',     en:'Fixtures',     zh:'Fixture',   ru:'Фикстуры',              de:'Fixtures',         fr:'Fixtures',         vi:'Fixtures' },
  'admin.settings':             { ko:'설정',       en:'Settings',     zh:'设置',      ru:'Настройки',             de:'Einstellungen',    fr:'Paramètres',       vi:'Cài đặt' },
  'admin.injector':             { ko:'ADB',        en:'ADB',          zh:'ADB',       ru:'ADB',                   de:'ADB',              fr:'ADB',              vi:'ADB' },
  'admin.gamedata':             { ko:'게임 데이터', en:'Game Data',   zh:'游戏数据',  ru:'Данные игры',           de:'Spieldaten',       fr:'Données de jeu',   vi:'Dữ liệu game' },
  'admin.accounts':             { ko:'계정 관리',  en:'Accounts',     zh:'账户管理',  ru:'Управление аккаунтами', de:'Konten',           fr:'Comptes',          vi:'Tài khoản' },
  'admin.files':                { ko:'파일',       en:'Files',        zh:'文件',      ru:'Файлы',                 de:'Dateien',          fr:'Fichiers',         vi:'Tệp' },
  'admin.cheat':                { ko:'치트',       en:'Cheat',        zh:'作弊',      ru:'Читы',                  de:'Cheat',            fr:'Triche',           vi:'Gian lận' },
  'cheat.notice':               { ko:'현재 로그인된 계정에 즉시 반영됩니다.', en:'Applied instantly to the active account.', zh:'立即应用于当前账号。', ru:'Применяется немедленно к активному аккаунту.', de:'Wird sofort auf das aktive Konto angewendet.', fr:'Appliqué immédiatement au compte actif.', vi:'Áp dụng ngay cho tài khoản đang hoạt động.' },
  'cheat.currency':             { ko:'재화',       en:'Currency',     zh:'货币',      ru:'Валюта',                de:'Währung',          fr:'Monnaie',          vi:'Tiền tệ' },
  'cheat.gold':                 { ko:'골드',       en:'Gold',         zh:'金币',      ru:'Золото',                de:'Gold',             fr:'Or',               vi:'Vàng' },
  'cheat.crystal':              { ko:'무료 에버스톤', en:'Free Everstone', zh:'免费魂石',  ru:'Бесплатный Эверстон',   de:'Freier Everstein', fr:'Éverstone gratuit', vi:'Everstone miễn phí' },
  'cheat.stone':                { ko:'마나더스트',   en:'Mana Dust',      zh:'魔力尘埃',   ru:'Пыль маны',             de:'Manastaub',         fr:'Poussière de mana',  vi:'Bụi mana' },
  'cheat.mana_crystal':         { ko:'마나크리스탈', en:'Mana Crystal',   zh:'魔力水晶',   ru:'Кристалл маны',         de:'Manakristall',      fr:'Cristal de mana',    vi:'Tinh thể mana' },
  'cheat.pay_dia':              { ko:'유료 에버스톤', en:'Pay Everstone',  zh:'付费魂石',   ru:'Платный Эверстон',       de:'Bezahlter Everstein', fr:'Éverstone payante', vi:'Everstone trả phí' },
  'cheat.apply_currency':       { ko:'재화 적용',  en:'Apply',        zh:'应用',      ru:'Применить',             de:'Anwenden',         fr:'Appliquer',        vi:'Áp dụng' },
  'cheat.hero_count':           { ko:'정령 수',    en:'Spirits',      zh:'精灵数',    ru:'Духи',                  de:'Geister',          fr:'Esprits',          vi:'Tinh linh' },
  'cheat.grade_common':         { ko:'커먼',       en:'Common',       zh:'普通',      ru:'Обычный',               de:'Gewöhnlich',       fr:'Commun',           vi:'Thường' },
  'cheat.grade_rare':           { ko:'레어',       en:'Rare',         zh:'稀有',      ru:'Редкий',                de:'Selten',           fr:'Rare',             vi:'Hiếm' },
  'cheat.grade_epic':           { ko:'에픽',       en:'Epic',         zh:'史诗',      ru:'Эпический',             de:'Episch',           fr:'Épique',           vi:'Sử thi' },
  'cheat.grade_epic_plus':      { ko:'에픽+',      en:'Epic+',        zh:'史诗+',     ru:'Эпический+',            de:'Episch+',          fr:'Épique+',          vi:'Sử thi+' },
  'cheat.grade_eternal':        { ko:'이터널',     en:'Eternal',      zh:'永恒',      ru:'Вечный',                de:'Ewig',             fr:'Éternel',          vi:'Vĩnh cửu' },
  'cheat.grade_eternal_plus':   { ko:'이터널+',    en:'Eternal+',     zh:'永恒+',     ru:'Вечный+',               de:'Ewig+',            fr:'Éternel+',         vi:'Vĩnh cửu+' },
  'cheat.grade_origin':         { ko:'오리진',     en:'Origin',       zh:'起源',      ru:'Исток',                 de:'Ursprung',         fr:'Origine',          vi:'Nguồn gốc' },
  'cheat.grade_origin_1':       { ko:'오리진+1',   en:'Origin+1',     zh:'起源+1',    ru:'Исток+1',               de:'Ursprung+1',       fr:'Origine+1',        vi:'Nguồn gốc+1' },
  'cheat.grade_origin_2':       { ko:'오리진+2',   en:'Origin+2',     zh:'起源+2',    ru:'Исток+2',               de:'Ursprung+2',       fr:'Origine+2',        vi:'Nguồn gốc+2' },
  'cheat.grade_origin_3':       { ko:'오리진+3',   en:'Origin+3',     zh:'起源+3',    ru:'Исток+3',               de:'Ursprung+3',       fr:'Origine+3',        vi:'Nguồn gốc+3' },
  'cheat.grade_origin_4':       { ko:'오리진+4',   en:'Origin+4',     zh:'起源+4',    ru:'Исток+4',               de:'Ursprung+4',       fr:'Origine+4',        vi:'Nguồn gốc+4' },
  'cheat.grade_origin_5':       { ko:'오리진+5',   en:'Origin+5',     zh:'起源+5',    ru:'Исток+5',               de:'Ursprung+5',       fr:'Origine+5',        vi:'Nguồn gốc+5' },
  'cheat.race_human':           { ko:'인간',       en:'Human',        zh:'人类',      ru:'Человек',               de:'Mensch',           fr:'Humain',           vi:'Người' },
  'cheat.race_furry':           { ko:'야수',       en:'Beast',        zh:'兽类',      ru:'Зверь',                 de:'Bestie',           fr:'Bête',             vi:'Thú dã' },
  'cheat.race_elf':             { ko:'요정',       en:'Elf',          zh:'精灵',      ru:'Эльф',                  de:'Elf',              fr:'Elfe',             vi:'Tiên tộc' },
  'cheat.race_undead':          { ko:'불사',       en:'Undead',       zh:'亡灵',      ru:'Нежить',                de:'Untot',            fr:'Mort-vivant',      vi:'Bất tử' },
  'cheat.race_angel':           { ko:'천사',       en:'Angel',        zh:'天使',      ru:'Ангел',                 de:'Engel',            fr:'Ange',             vi:'Thiên thần' },
  'cheat.race_demon':           { ko:'악마',       en:'Demon',        zh:'恶魔',      ru:'Демон',                 de:'Dämon',            fr:'Démon',            vi:'Ác quỷ' },
  'cheat.race_special':         { ko:'혼돈',       en:'Chaos',        zh:'混沌',      ru:'Хаос',                  de:'Chaos',            fr:'Chaos',            vi:'Hỗn loạn' },
  'cheat.apply_hero':           { ko:'정령 추가',  en:'Add Spirit',   zh:'添加精灵',  ru:'Добавить духа',         de:'Geist hinzufügen', fr:'Ajouter esprit',   vi:'Thêm tinh linh' },
  'cheat.current_state':        { ko:'현재 상태',  en:'Current State', zh:'当前状态', ru:'Текущее состояние',     de:'Aktueller Status', fr:'État actuel',      vi:'Trạng thái hiện tại' },
  'cheat.input_amount':         { ko:'수량',       en:'Amount',       zh:'数量',      ru:'Количество',            de:'Menge',            fr:'Quantité',         vi:'Số lượng' },
  'cheat.applied':              { ko:'적용됨',     en:'Applied',      zh:'已应用',    ru:'Применено',             de:'Angewendet',       fr:'Appliqué',         vi:'Đã áp dụng' },
  'cheat.hero_applied':         { ko:'정령 적용됨',  en:'Spirit applied', zh:'精灵已应用', ru:'Дух применён',     de:'Geist angewendet', fr:'Esprit appliqué',  vi:'Tinh linh đã áp dụng' },
  'cheat.polling_hint':         { ko:'3초마다 자동 갱신', en:'Auto-refresh every 3s', zh:'每3秒自动刷新', ru:'Автообновление каждые 3 с', de:'Alle 3 s aktualisiert', fr:'Actualisation toutes les 3 s', vi:'Tự làm mới mỗi 3 giây' },
  'admin.uptime':               { ko:'업타임',     en:'Uptime',       zh:'运行时间',  ru:'Время работы',          de:'Betriebszeit',     fr:'Disponibilité',    vi:'Thời gian hoạt động' },
  'admin.requests':             { ko:'처리 요청',  en:'Requests',     zh:'已处理请求', ru:'Запросы',              de:'Anfragen',         fr:'Requêtes',         vi:'Yêu cầu' },
  'server.port':                { ko:'포트',       en:'Port',         zh:'端口',      ru:'Порт',                  de:'Port',             fr:'Port',             vi:'Cổng' },
  'admin.db_select_table':      { ko:'테이블을 선택하세요.', en:'Select a table.', zh:'请选择表。', ru:'Выберите таблицу.', de:'Tabelle auswählen.', fr:'Sélectionnez une table.', vi:'Chọn một bảng.' },
  'admin.db_tables':            { ko:'테이블',     en:'TABLES',       zh:'数据表',    ru:'Таблицы',               de:'Tabellen',         fr:'Tables',           vi:'Bảng dữ liệu' },
  'admin.db_refresh':           { ko:'새로고침',   en:'Refresh',      zh:'刷新',      ru:'Обновить',              de:'Aktualisieren',    fr:'Actualiser',       vi:'Làm mới' },
  'admin.db_tab_data':          { ko:'데이터',     en:'DATA',         zh:'数据',      ru:'Данные',                de:'Daten',            fr:'Données',          vi:'Dữ liệu' },
  'admin.db_tab_schema':        { ko:'스키마',     en:'SCHEMA',       zh:'模式',      ru:'Схема',                 de:'Schema',           fr:'Schéma',           vi:'Lược đồ' },
  'admin.db_search_ph':         { ko:'행 검색…',  en:'Search rows…', zh:'搜索行…',   ru:'Поиск строк…',          de:'Zeilen suchen…',   fr:'Rechercher lignes…', vi:'Tìm hàng…' },
  'admin.acct_new':             { ko:'신규 계정',  en:'New Account',  zh:'新建账户',  ru:'Новый аккаунт',         de:'Neues Konto',      fr:'Nouveau compte',   vi:'Tài khoản mới' },
  'admin.acct_nick':            { ko:'닉네임',     en:'Nickname',     zh:'昵称',      ru:'Никнейм',               de:'Nickname',         fr:'Pseudo',           vi:'Biệt danh' },
  'admin.acct_login':           { ko:'로그인 유형', en:'Login Type',  zh:'登录类型',  ru:'Тип входа',             de:'Anmeldetyp',       fr:'Type de connexion', vi:'Loại đăng nhập' },
  'admin.acct_idp_guest':       { ko:'게스트',     en:'Guest',        zh:'游客',      ru:'Гость',                 de:'Gast',             fr:'Invité',           vi:'Khách' },
  'admin.acct_idp_kakao':       { ko:'카카오',     en:'Kakao',        zh:'Kakao',     ru:'Kakao',                 de:'Kakao',            fr:'Kakao',            vi:'Kakao' },
  'admin.acct_create':          { ko:'생성',       en:'Create',       zh:'创建',      ru:'Создать',               de:'Erstellen',        fr:'Créer',            vi:'Tạo' },
  'admin.acct_edit':            { ko:'계정 편집',  en:'Edit Account', zh:'编辑账户',  ru:'Редактировать аккаунт', de:'Konto bearbeiten', fr:'Modifier le compte', vi:'Chỉnh sửa tài khoản' },
  'admin.save':                 { ko:'저장',       en:'Save',         zh:'保存',      ru:'Сохранить',             de:'Speichern',        fr:'Enregistrer',      vi:'Lưu' },
  'admin.cancel':               { ko:'취소',       en:'Cancel',       zh:'取消',      ru:'Отмена',                de:'Abbrechen',        fr:'Annuler',          vi:'Hủy' },
  'admin.loading':              { ko:'로딩 중…',   en:'Loading…',     zh:'加载中…',   ru:'Загрузка…',             de:'Wird geladen…',    fr:'Chargement…',      vi:'Đang tải…' },
  'admin.load_fail':            { ko:'로드 실패',  en:'Load failed',  zh:'加载失败',  ru:'Ошибка загрузки',       de:'Ladefehler',       fr:'Échec du chargement', vi:'Tải thất bại' },
  'admin.server_error':         { ko:'서버 오류',  en:'Server error', zh:'服务器错误', ru:'Ошибка сервера',        de:'Serverfehler',     fr:'Erreur du serveur', vi:'Lỗi máy chủ' },
  'admin.save_ok':              { ko:'저장됨',     en:'Saved',        zh:'已保存',    ru:'Сохранено',             de:'Gespeichert',      fr:'Enregistré',       vi:'Đã lưu' },
  'admin.save_fail':            { ko:'저장 실패',  en:'Save failed',  zh:'保存失败',  ru:'Ошибка сохранения',     de:'Fehler beim Speichern', fr:"Échec de l'enregistrement", vi:'Lưu thất bại' },
  'admin.x_fail':               { ko:'실패',       en:'Failed',       zh:'失败',      ru:'Ошибка',                de:'Fehlgeschlagen',   fr:'Échec',            vi:'Thất bại' },
  'admin.acct_empty':           { ko:'등록된 계정 없음', en:'No accounts', zh:'暂无账号', ru:'Нет аккаунтов',      de:'Keine Konten',     fr:'Aucun compte',     vi:'Không có tài khoản' },
  'admin.acct_delete_confirm':  { ko:'이 계정을 삭제하시겠습니까?', en:'Delete this account?', zh:'确定要删除此账号吗？', ru:'Удалить этот аккаунт?', de:'Dieses Konto löschen?', fr:'Supprimer ce compte ?', vi:'Xóa tài khoản này?' },
  'admin.acct_nick_required':   { ko:'닉네임을 입력하세요.', en:'Enter a nickname.', zh:'请输入昵称。', ru:'Введите никнейм.', de:'Bitte Nickname eingeben.', fr:'Veuillez entrer un pseudo.', vi:'Vui lòng nhập biệt danh.' },
  'admin.acct_creating':        { ko:'생성 중…',   en:'Creating…',    zh:'创建中…',   ru:'Создание…',             de:'Wird erstellt…',   fr:'Création…',        vi:'Đang tạo…' },
  'admin.acct_create_fail':     { ko:'생성 실패',  en:'Creation failed', zh:'创建失败', ru:'Ошибка создания',      de:'Erstellung fehlgeschlagen', fr:'Échec de la création', vi:'Tạo thất bại' },
  'admin.acct_created':         { ko:'생성됨',     en:'Created',      zh:'已创建',    ru:'Создано',               de:'Erstellt',         fr:'Créé',             vi:'Đã tạo' },
  'admin.file_none':            { ko:'파일 없음',  en:'No files',     zh:'无文件',    ru:'Нет файлов',            de:'Keine Dateien',    fr:'Aucun fichier',    vi:'Không có tệp' },
  'admin.import_btn':           { ko:'가져오기',   en:'Import',       zh:'导入',      ru:'Импорт',                de:'Importieren',      fr:'Importer',         vi:'Nhập' },
  'admin.import_ok':            { ko:'가져오기 완료', en:'Import complete', zh:'导入完成', ru:'Импорт завершён',   de:'Import abgeschlossen', fr:'Importation terminée', vi:'Nhập hoàn tất' },
  'admin.connecting':           { ko:'연결 중…',   en:'Connecting…',  zh:'连接中…',   ru:'Подключение…',          de:'Verbindung…',      fr:'Connexion…',       vi:'Đang kết nối…' },
  'admin.running':              { ko:'실행 중…',   en:'Running…',     zh:'运行中…',   ru:'Выполнение…',           de:'Wird ausgeführt…', fr:'En cours…',        vi:'Đang chạy…' },
  'admin.stopped':              { ko:'중지됨',     en:'Stopped',      zh:'已停止',    ru:'Остановлено',           de:'Gestoppt',         fr:'Arrêté',           vi:'Đã dừng' },
  'admin.idle':                 { ko:'대기 중',    en:'Idle',         zh:'空闲',      ru:'В ожидании',            de:'Bereit',           fr:'En attente',       vi:'Sẵn sàng' },
  'admin.connected':            { ko:'연결됨',     en:'Connected',    zh:'已连接',    ru:'Подключено',            de:'Verbunden',        fr:'Connecté',         vi:'Đã kết nối' },
  'admin.failed':               { ko:'실패',       en:'Failed',       zh:'失败',      ru:'Ошибка',                de:'Fehlgeschlagen',   fr:'Échec',            vi:'Thất bại' },
  'admin.acct_badge_current':   { ko:'현재',       en:'Current',      zh:'当前',      ru:'Текущий',               de:'Aktiv',            fr:'Actuel',           vi:'Hiện tại' },
  'admin.acct_select_btn':      { ko:'선택',       en:'Select',       zh:'选择',      ru:'Выбрать',               de:'Auswählen',        fr:'Sélectionner',     vi:'Chọn' },
  'admin.acct_edit_btn':        { ko:'편집',       en:'Edit',         zh:'编辑',      ru:'Изменить',              de:'Bearbeiten',       fr:'Modifier',         vi:'Chỉnh sửa' },
  'admin.acct_delete_btn':      { ko:'삭제',       en:'Delete',       zh:'删除',      ru:'Удалить',               de:'Löschen',          fr:'Supprimer',        vi:'Xóa' },
  'admin.health_load_fail':     { ko:'헬스체크 로드 실패', en:'Failed to load health checks.', zh:'健康检查加载失败。', ru:'Ошибка загрузки проверок.', de:'Fehler beim Laden.', fr:'Échec du chargement.', vi:'Tải thất bại.' },
  'admin.gamedata_no_currency': { ko:'통화 데이터 없음', en:'No currency data.', zh:'无货币数据。', ru:'Нет данных о валюте.', de:'Keine Währungsdaten.', fr:'Aucune donnée de devise.', vi:'Không có dữ liệu tiền tệ.' },
  'admin.gamedata_no_heroes':   { ko:'정령 데이터 없음', en:'No heroes.',  zh:'无精灵数据。', ru:'Нет данных о героях.', de:'Keine Heldendaten.', fr:'Aucun héros.', vi:'Không có dữ liệu tinh linh.' },
  'status.online':              { ko:'온라인',     en:'Online',       zh:'在线',      ru:'В сети',                de:'Online',           fr:'En ligne',         vi:'Trực tuyến' },
  'status.offline':             { ko:'오프라인',   en:'Offline',      zh:'离线',      ru:'Не в сети',             de:'Offline',          fr:'Hors ligne',       vi:'Ngoại tuyến' },
  'nav.offline_badge':          { ko:'Offline',    en:'Offline',      zh:'离线版',    ru:'Offline',               de:'Offline',          fr:'Offline',          vi:'Offline' },
  'ui.theme_toggle':            { ko:'테마 전환',  en:'Toggle theme',  zh:'切换主题',  ru:'Сменить тему',          de:'Design wechseln',  fr:'Changer le thème', vi:'Đổi chủ đề' },
  'ui.open_sidebar':            { ko:'메뉴 열기',  en:'Open sidebar',  zh:'打开菜单',  ru:'Открыть меню',          de:'Menü öffnen',      fr:'Ouvrir le menu',   vi:'Mở menu' },
  'ui.refresh':                 { ko:'새로고침',   en:'Refresh',       zh:'刷新',      ru:'Обновить',              de:'Aktualisieren',    fr:'Actualiser',       vi:'Làm mới' },
  'ui.search':                  { ko:'검색…',     en:'Search…',       zh:'搜索…',     ru:'Поиск…',                de:'Suchen…',          fr:'Rechercher…',      vi:'Tìm kiếm…' },
  'cheat.failed':               { ko:'실패',       en:'Failed',        zh:'失败',      ru:'Ошибка',                de:'Fehlgeschlagen',   fr:'Échec',            vi:'Thất bại' },
  'cheat.hero':                 { ko:'정령',       en:'Spirit',        zh:'精灵',      ru:'Дух',                   de:'Geist',            fr:'Esprit',           vi:'Tinh linh' },
  'cheat.hero_no':              { ko:'정령 번호',  en:'Spirit No',     zh:'精灵编号',  ru:'Номер духа',            de:'Geist-Nr.',        fr:'N° esprit',        vi:'Số tinh linh' },
  'cheat.hero_level':           { ko:'레벨',       en:'Level',         zh:'等级',      ru:'Уровень',               de:'Level',            fr:'Niveau',           vi:'Cấp độ' },
  'admin.game_start_title':     { ko:'게임 시작',  en:'Start Game',    zh:'开始游戏',  ru:'Запуск игры',           de:'Spiel starten',    fr:'Démarrer le jeu',  vi:'Khởi động game' },
  'admin.game_start_btn':       { ko:'▶ 게임 시작', en:'▶ START GAME', zh:'▶ 开始游戏', ru:'▶ ЗАПУСК',             de:'▶ SPIEL STARTEN',  fr:'▶ DÉMARRER',       vi:'▶ KHỞI ĐỘNG' },
  'admin.game_start_running':   { ko:'게임 시작 중…', en:'Starting game…', zh:'游戏启动中…', ru:'Запуск игры…',     de:'Spiel startet…',   fr:'Démarrage…',       vi:'Đang khởi động…' },
  'admin.game_start_done':      { ko:'게임 실행 중', en:'Game running', zh:'游戏运行中', ru:'Игра запущена',        de:'Spiel läuft',      fr:'Jeu en cours',     vi:'Game đang chạy' },
  'admin.lang':                 { ko:'언어',       en:'Language',      zh:'语言',      ru:'Язык',                  de:'Sprache',          fr:'Langue',           vi:'Ngôn ngữ' },
  'admin.proxy_on':             { ko:'프록시 모드', en:'Proxy Mode',   zh:'代理模式',  ru:'Режим прокси',          de:'Proxy-Modus',      fr:'Mode proxy',       vi:'Chế độ proxy' },
  'admin.game_url':             { ko:'게임 서버 URL', en:'Game Server URL', zh:'游戏服务器URL', ru:'URL игрового сервера', de:'Spielserver-URL', fr:'URL du serveur de jeu', vi:'URL máy chủ game' },
  'admin.adb_port':             { ko:'ADB 포트',   en:'ADB Port',      zh:'ADB端口',   ru:'ADB-порт',              de:'ADB-Port',         fr:'Port ADB',         vi:'Cổng ADB' },
  'admin.data_dir':             { ko:'데이터 경로', en:'Data Dir',     zh:'数据目录',  ru:'Директория данных',     de:'Datenverzeichnis', fr:'Répertoire données', vi:'Thư mục dữ liệu' },
  'admin.apply':                { ko:'적용',       en:'Apply',         zh:'应用',      ru:'Применить',             de:'Anwenden',         fr:'Appliquer',        vi:'Áp dụng' },
  'admin.save_ing':             { ko:'저장 중…',   en:'Saving…',       zh:'保存中…',   ru:'Сохранение…',           de:'Wird gespeichert…', fr:'Enregistrement…', vi:'Đang lưu…' },
  'admin.x_server_error':       { ko:'✗ 서버 오류', en:'✗ Server error', zh:'✗ 服务器错误', ru:'✗ Ошибка сервера', de:'✗ Serverfehler',   fr:'✗ Erreur serveur',  vi:'✗ Lỗi máy chủ' },
  'admin.logs_server':          { ko:'서버 로그',  en:'Server Log',    zh:'服务器日志', ru:'Журнал сервера',        de:'Serverprotokoll',  fr:'Journal serveur',  vi:'Nhật ký máy chủ' },
  'admin.logs_adb':             { ko:'ADB 로그캣', en:'ADB Logcat',    zh:'ADB日志',   ru:'ADB Logcat',            de:'ADB Logcat',       fr:'ADB Logcat',       vi:'ADB Logcat' },
  'admin.logs_headers':         { ko:'헤더/바디',  en:'Headers/Body',  zh:'头部/正文', ru:'Заголовки/Тело',        de:'Header/Body',      fr:'En-têtes/Corps',   vi:'Header/Body' },
  'admin.log_filter_ph':        { ko:'필터…',     en:'Filter…',       zh:'过滤…',     ru:'Фильтр…',               de:'Filtern…',         fr:'Filtrer…',         vi:'Lọc…' },
  'admin.log_pause':            { ko:'일시정지',   en:'Pause',         zh:'暂停',      ru:'Пауза',                 de:'Pause',            fr:'Pause',            vi:'Tạm dừng' },
  'admin.log_resume':           { ko:'재개',       en:'Resume',        zh:'继续',      ru:'Возобновить',           de:'Fortsetzen',       fr:'Reprendre',        vi:'Tiếp tục' },
  'admin.log_clear':            { ko:'지우기',     en:'Clear',         zh:'清除',      ru:'Очистить',              de:'Löschen',          fr:'Effacer',          vi:'Xóa' },
  'admin.files_select_dir':     { ko:'디렉토리를 선택하세요.', en:'Select a directory.', zh:'请选择目录。', ru:'Выберите директорию.', de:'Verzeichnis auswählen.', fr:'Sélectionner un répertoire.', vi:'Chọn thư mục.' },
  'admin.file_edit':            { ko:'파일 편집',  en:'Edit File',     zh:'编辑文件',  ru:'Редактировать файл',    de:'Datei bearbeiten', fr:'Modifier le fichier', vi:'Chỉnh sửa tệp' },
  'admin.gamedata_section_userinfo':  { ko:'유저 정보',  en:'UserInfo',    zh:'用户信息', ru:'Инфо о пользователе', de:'Benutzerinfo', fr:'Info utilisateur', vi:'Thông tin người dùng' },
  'admin.gamedata_section_currencies':{ ko:'재화',       en:'Currencies',  zh:'货币',    ru:'Валюты',              de:'Währungen',    fr:'Devises',           vi:'Tiền tệ' },
  'admin.gamedata_section_heroes':    { ko:'정령',       en:'Spirits',     zh:'精灵',    ru:'Духи',                de:'Geister',      fr:'Esprits',           vi:'Tinh linh' },
  'admin.gamedata_section_settings':  { ko:'설정',       en:'Settings',    zh:'设置',    ru:'Настройки',           de:'Einstellungen', fr:'Paramètres',       vi:'Cài đặt' },
  'admin.injector_scanning':    { ko:'디바이스 탐색 중…', en:'Scanning devices…', zh:'扫描设备中…', ru:'Поиск устройств…', de:'Suche Geräte…', fr:'Scan des appareils…', vi:'Đang tìm thiết bị…' },
  'admin.injector_no_devices':  { ko:'연결된 디바이스 없음', en:'No devices found', zh:'未找到设备', ru:'Устройства не найдены', de:'Keine Geräte', fr:'Aucun appareil', vi:'Không tìm thấy thiết bị' },
  'admin.injector_no_device':   { ko:'디바이스 없음', en:'No device',      zh:'无设备',    ru:'Нет устройства',    de:'Kein Gerät',       fr:'Aucun appareil',   vi:'Không có thiết bị' },
  'admin.injector_devices':     { ko:'디바이스 목록', en:'Devices',        zh:'设备列表',  ru:'Устройства',        de:'Geräte',           fr:'Appareils',        vi:'Thiết bị' },
  'admin.injector_connect':     { ko:'디바이스 연결', en:'Connect Device', zh:'连接设备',  ru:'Подключить устройство', de:'Gerät verbinden', fr:'Connecter appareil', vi:'Kết nối thiết bị' },
  'admin.injector_control':     { ko:'인젝터 제어',  en:'Injector Control', zh:'注入器控制', ru:'Управление инжектором', de:'Injektor-Steuerung', fr:'Contrôle injecteur', vi:'Điều khiển injector' },
  'admin.injector_check':       { ko:'체크',         en:'Check',          zh:'检查',      ru:'Проверить',         de:'Prüfen',           fr:'Vérifier',         vi:'Kiểm tra' },
  'admin.injector_connect_ph':  { ko:'IP:포트 또는 serial', en:'IP:port or serial', zh:'IP:端口 或 串口', ru:'IP:порт или serial', de:'IP:Port oder Serial', fr:'IP:port ou serial', vi:'IP:cổng hoặc serial' },
  'admin.injector_run':         { ko:'인젝터 실행',  en:'Run Injector',   zh:'运行注入器', ru:'Запустить инжектор', de:'Injektor starten', fr:'Lancer injecteur', vi:'Chạy injector' },
  'admin.injector_stop':        { ko:'중지',         en:'Stop',           zh:'停止',      ru:'Остановить',        de:'Stoppen',          fr:'Arrêter',          vi:'Dừng' },
  'admin.injector_adb_cmd':     { ko:'ADB 명령',     en:'ADB Command',    zh:'ADB命令',   ru:'ADB команда',       de:'ADB-Befehl',       fr:'Commande ADB',     vi:'Lệnh ADB' },
  'admin.injector_adb_cmd_ph':  { ko:'adb 명령…',   en:'adb command…',   zh:'adb命令…',  ru:'adb команда…',      de:'adb Befehl…',      fr:'commande adb…',    vi:'lệnh adb…' },
  'admin.injector_send':        { ko:'전송',         en:'Send',           zh:'发送',      ru:'Отправить',         de:'Senden',           fr:'Envoyer',          vi:'Gửi' },
  'admin.acct_nick_label':      { ko:'닉네임',       en:'Nickname',      zh:'昵称',      ru:'Никнейм',           de:'Nickname',         fr:'Pseudo',           vi:'Biệt danh' },
  'admin.acct_pid_label':       { ko:'플레이어 ID',  en:'Player ID',     zh:'玩家ID',    ru:'ID игрока',         de:'Spieler-ID',       fr:'ID joueur',        vi:'ID người chơi' },
  'admin.acct_idp_google':      { ko:'구글',         en:'Google',        zh:'Google',    ru:'Google',            de:'Google',           fr:'Google',           vi:'Google' },
  'admin.import_title':         { ko:'UserInfo 가져오기', en:'Import UserInfo', zh:'导入UserInfo', ru:'Импорт UserInfo', de:'UserInfo importieren', fr:'Importer UserInfo', vi:'Nhập UserInfo' },
  'admin.import_desc1':         { ko:'계정에 UserInfo JSON 파일을 가져옵니다.', en:'Import a UserInfo JSON file into the account.', zh:'将UserInfo JSON文件导入账号。', ru:'Импортировать JSON-файл UserInfo в аккаунт.', de:'UserInfo-JSON-Datei in Konto importieren.', fr:'Importer un fichier JSON UserInfo dans le compte.', vi:'Nhập tệp JSON UserInfo vào tài khoản.' },
  'admin.import_desc2':         { ko:'기존 데이터를 덮어씁니다.', en:'This will overwrite existing data.', zh:'这将覆盖现有数据。', ru:'Существующие данные будут перезаписаны.', de:'Vorhandene Daten werden überschrieben.', fr:'Les données existantes seront remplacées.', vi:'Sẽ ghi đè dữ liệu hiện có.' },
  'admin.import_file_required': { ko:'파일을 선택하세요.', en:'Select a file.', zh:'请选择文件。', ru:'Выберите файл.', de:'Bitte Datei auswählen.', fr:'Veuillez sélectionner un fichier.', vi:'Vui lòng chọn tệp.' },
  'admin.import_ing':           { ko:'가져오는 중…', en:'Importing…',   zh:'导入中…',   ru:'Импорт…',           de:'Importieren…',     fr:'Importation…',     vi:'Đang nhập…' },
  'admin.db_no_rows':           { ko:'데이터 없음',  en:'No data.',      zh:'无数据。',  ru:'Нет данных.',       de:'Keine Daten.',     fr:'Aucune donnée.',   vi:'Không có dữ liệu.' },
  'admin.db_ddl':               { ko:'DDL',         en:'DDL',           zh:'DDL',       ru:'DDL',               de:'DDL',              fr:'DDL',              vi:'DDL' },
  'admin.adb_section_title':    { ko:'ADB 연결',    en:'ADB Connection', zh:'ADB连接',   ru:'Подключение ADB',   de:'ADB-Verbindung',   fr:'Connexion ADB',    vi:'Kết nối ADB' },
  'admin.adb_scan_btn':         { ko:'기기 스캔',   en:'Scan Devices',  zh:'扫描设备',   ru:'Сканировать',       de:'Geräte scannen',   fr:'Scanner appareils', vi:'Quét thiết bị' },
  'admin.adb_target_ph':        { ko:'IP:포트 또는 serial', en:'IP:port or serial', zh:'IP:端口 或 序列号', ru:'IP:порт или serial', de:'IP:Port oder Serial', fr:'IP:port ou serial', vi:'IP:cổng hoặc serial' },
  'admin.adb_connect_btn':      { ko:'연결',        en:'Connect',       zh:'连接',       ru:'Подключить',        de:'Verbinden',        fr:'Connecter',        vi:'Kết nối' },
  'admin.adb_probe_btn':        { ko:'연결 확인',   en:'Probe',         zh:'连接检测',   ru:'Проверить',         de:'Prüfen',           fr:'Sonder',           vi:'Kiểm tra' },
  'admin.adb_reverse_btn':      { ko:'포트 역방향 9991', en:'Reverse Port 9991', zh:'反向端口9991', ru:'Реверс порта 9991', de:'Port umkehren 9991', fr:'Port inverse 9991', vi:'Đảo cổng 9991' },
  'admin.adb_root_btn':         { ko:'root 획득',   en:'Get Root',      zh:'获取Root',   ru:'Получить Root',     de:'Root erhalten',    fr:'Obtenir root',     vi:'Lấy quyền root' },
  'admin.adb_logcat_clear_btn': { ko:'Logcat 초기화', en:'Clear Logcat', zh:'清空Logcat', ru:'Очистить Logcat',  de:'Logcat leeren',    fr:'Effacer Logcat',   vi:'Xóa Logcat' },
  'admin.adb_no_exe':           { ko:'adb.exe 없음 — EXE 폴더 adb\\ 에 복사하세요', en:'adb.exe missing — copy to adb\\ next to the EXE', zh:'找不到adb.exe — 请复制到EXE旁adb\\文件夹', ru:'adb.exe не найден — скопируйте в adb\\ рядом с EXE', de:'adb.exe fehlt — in adb\\ neben EXE kopieren', fr:"adb.exe manquant — copiez dans adb\\ à côté de l'EXE", vi:'Thiếu adb.exe — sao chép vào adb\\ cạnh EXE' },
  'admin.adb_no_device_hint':   { ko:'에뮬레이터가 실행 중인지 확인 후 연결하세요', en:'Ensure the emulator is running then connect', zh:'确认模拟器运行中，再连接', ru:'Убедитесь что эмулятор запущен, затем подключитесь', de:'Emulator gestartet? Dann verbinden', fr:"Vérifiez que l'émulateur tourne puis connectez", vi:'Xác nhận trình giả lập đang chạy rồi kết nối' },
  'admin.adb_eversoul_ok':      { ko:'Eversoul 설치됨', en:'Eversoul installed', zh:'Eversoul已安装', ru:'Eversoul установлен', de:'Eversoul installiert', fr:'Eversoul installé', vi:'Eversoul đã cài' },
  'admin.adb_eversoul_fail':    { ko:'Eversoul 미설치', en:'Eversoul missing', zh:'Eversoul未安装', ru:'Eversoul не установлен', de:'Eversoul fehlt', fr:'Eversoul manquant', vi:'Eversoul chưa cài' },
  'admin.adb_root_ok':          { ko:'Root 성공',   en:'Root acquired', zh:'Root成功',   ru:'Root получен',      de:'Root erhalten',    fr:'Root obtenu',      vi:'Root thành công' },
  'admin.adb_root_fail':        { ko:'Root 실패',   en:'Root failed',   zh:'Root失败',   ru:'Ошибка Root',       de:'Root fehlgeschlagen', fr:'Échec root',    vi:'Root thất bại' },
  'admin.adb_reverse_ok':       { ko:'포트 역방향 설정됨', en:'Reverse port set', zh:'反向端口已设置', ru:'Реверс порта установлен', de:'Umkehrport gesetzt', fr:'Port inverse défini', vi:'Đã đặt cổng đảo ngược' },
  'admin.adb_reverse_fail':     { ko:'포트 역방향 실패', en:'Reverse port failed', zh:'反向端口失败', ru:'Ошибка реверса порта', de:'Umkehrport fehlgeschlagen', fr:'Échec port inverse', vi:'Đảo cổng thất bại' },
  'admin.adb_connected_ok':     { ko:'연결됨',      en:'Connected',     zh:'已连接',     ru:'Подключено',        de:'Verbunden',        fr:'Connecté',         vi:'Đã kết nối' },
  'admin.adb_connected_fail':   { ko:'연결 실패',   en:'Connection failed', zh:'连接失败', ru:'Ошибка подключения', de:'Verbindung fehlgeschlagen', fr:'Connexion échouée', vi:'Kết nối thất bại' },
  'admin.adb_connected_list':  { ko:'연결된 기기',  en:'Connected Devices', zh:'已连接设备', ru:'Подключённые устройства', de:'Verbundene Geräte', fr:'Appareils connectés', vi:'Thiết bị đã kết nối' },
  'admin.adb_reverse_list':    { ko:'Reverse 목록', en:'Reverse List',      zh:'反向列表',   ru:'Список Reverse',         de:'Reverse-Liste',     fr:'Liste reverse',       vi:'Danh sách Reverse' },
  'admin.adb_reverse_empty':   { ko:'설정된 reverse 없음', en:'No reverse entries', zh:'无反向条目', ru:'Нет записей reverse', de:'Keine Reverse-Einträge', fr:'Aucune entrée reverse', vi:'Không có mục reverse' },
  'admin.adb_serial_label':     { ko:'시리얼',      en:'Serial',        zh:'序列号',     ru:'Серийный',          de:'Seriennummer',     fr:'Série',            vi:'Serial' },
  'admin.manual':               { ko:'메뉴얼',      en:'Manual',        zh:'使用手册',   ru:'Руководство',       de:'Handbuch',         fr:'Manuel',           vi:'Hướng dẫn' },
}

function resolve(key: string, lang: Lang): string {
  const entry = DICT[key]
  if (!entry) return key
  return entry[lang] ?? entry['en'] ?? key
}

export type I18nContextValue = {
  lang: Lang
  setLang: (l: Lang) => void
  t: (key: string) => string
}

export const I18nContext = createContext<I18nContextValue>({
  lang: 'ko',
  setLang: () => {},
  t: (key) => key,
})

export function I18nProvider({ children }: { children: ReactNode }) {
  const [lang, setLangState] = useState<Lang>(() => {
    const stored = localStorage.getItem('es-lang') as Lang | null
    return LANGS.includes(stored as Lang) ? (stored as Lang) : 'ko'
  })

  const setLang = useCallback((l: Lang) => {
    setLangState(l)
    localStorage.setItem('es-lang', l)
    fetch('/web/api/config', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ lang: l }),
    }).catch(() => {})
  }, [])

  const t = useCallback((key: string) => resolve(key, lang), [lang])

  return createElement(I18nContext.Provider, { value: { lang, setLang, t } }, children)
}

export function useI18n(): I18nContextValue {
  return useContext(I18nContext)
}
