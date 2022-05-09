#include <eosio/eosio.hpp>
#include <eosio/asset.hpp>

using namespace eosio;
using namespace std;

CONTRACT test_withdraw : public contract
{
public:
   using contract::contract;

   ACTION hi(name nm);

   using hi_action = action_wrapper<"hi"_n, &test_withdraw::hi>;

   ACTION withdraw(name target_wallet, asset quantity)
   {
      require_auth(_self);
      check(quantity.amount > 0, "quantity > 0");
      check(quantity.symbol == symbol("WAX", 8), "invalid symbol");
      action(
          permission_level{_self, "active"_n},
          "eosio.token"_n,
          "transfer"_n,
          std::make_tuple(_self, target_wallet, quantity, std::string("Withdraw")))
          .send();
   }
};