module DebateArena::Debate {
    use std::signer;
    use endless_framework::coin;
    use endless_framework::endless_coin::EndlessCoin;

    // 1. LA STRUCTURE (À quoi ressemble un débat ?)
    // C'est comme une fiche bristol qui stocke les infos du match
    struct DebateGame has key, store {
        player_1: address,
        player_2: address, // Sera rempli quand quelqu'un rejoint
        bet_amount: u64,   // Montant du pari
        topic: vector<u8>, // Le sujet (en texte/bytes)
        game_active: bool,
    }

    // 2. LA FONCTION POUR CRÉER UN DÉBAT
    public entry fun create_debate(user: &signer, bet: u64, topic_text: vector<u8>) {
        // Le code ici vérifiera si l'utilisateur a assez d'argent
        // Et créera l'objet "DebateGame"
        // Pour l'instant, c'est le squelette
    }

    // 3. LA FONCTION POUR REJOINDRE
    public entry fun join_debate(user: &signer, game_owner_address: address) {
        // Le joueur 2 met ses sous et le jeu commence
    }

    // 4. LA FONCTION MAGIQUE (Appel IA)
    // C'est ici que Endless brille.
    public entry fun resolve_debate(game_owner: address) {
        // 1. Récupérer les arguments
        // 2. Appeler l'oracle IA d'Endless (Mock pour l'instant)
        // 3. Transférer les sous au gagnant
    }
}
